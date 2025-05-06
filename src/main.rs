use clap::Parser;
use std::{collections::VecDeque, fs, io::Read, str::FromStr};

// header for nasm program
// sets up memory cells and entry points
const HEADER: &'static str = r#"
        global _start                  ; directive for global entrypoint for gcc

        section .bss
MEM:
        resb 30000                     ; 30000 byte cells

        section .text

_start:                                ; linker entrypoint
        mov ebx, 0                      ; initialize bx as 0 (this will be our cell counter)
"#;

// footer for program
// calls exit system call
// defines all procedures

const FOOTER: &'static str = r#"    
; Exit
        mov eax, 1
        mov ebx, 0
        int 0x80

add:
        mov edx, MEM                   ; get base adress of cells
        add edx, ebx                     ; add offset (cell counter)
        add [edx], al                 ; add value stored in eax to cell
        ret

sub:
        mov edx, MEM                   ; get base adress of cells
        add edx, ebx                     ; add offset (cell counter)
        sub [edx], al                 ; sub value stored in eax from cell
        ret

output:
; push to stack

        push ecx
        push edx
        push eax
        push ebx

; procedure

        mov ecx, MEM                   ; get base address of cells
        add ecx, ebx                     ; add offset (cell counter)
        mov eax, 4                     ; syscall - write
; ecx already contains pointer to the char in memory
        mov edx, 1                     ; len = 1 (output only one char)
        mov ebx, 1                     ; fd 1 = stdout
        int 0x80                       ; interupt signal for syscall

; pop from stack

        pop ebx
        pop eax
        pop edx
        pop ecx
        ret

input:
; push to stack

        push ecx
        push edx
        push eax
        push ebx

; procedure

        mov ecx, MEM                   ; get base address of cells
        add ecx, ebx                     ; add offset (cell counter)
        mov eax, 3                     ; Read syscall
; ecx has right value
        mov edx, 1                     ; len = 1 (accept one char input)
        mov ebx, 0                     ; fd 0 = stdin
        int 0x80                       ; interupt signal for syscall

; pop from stack

        pop ebx
        pop eax
        pop edx
        pop ecx
        ret
"#;

// Assembly for adding 1
const ADD: &'static str = r#"
        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell
"#;

// Assembly for subtracting 1
const SUB: &'static str = r#"
        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell
"#;

// Assembly for incrementing cell pointer
const INC: &'static str = r#"
        add ebx, 1                      ; move cell-pointer (increment)
"#;

// Assembly for decrementing cell pointer
const DEC: &'static str = r#"
        sub ebx, 1                      ; move cell-pointer (decrement)
"#;

// Assembly for outputing current cell as ascii
const OUTPUT: &'static str = r#"
        call output
"#;

// Assembly for taking one ascii char as input to current cell
const INPUT: &'static str = r#"
        call input
"#;

enum Token {
    IncCellPointer,
    DecCellPointer,
    Plus,
    Minus,
    Output,
    Input,
    ScopeStart,
    ScopeEnd,
}

fn parse(s: &str) -> VecDeque<Token> {
    let mut tokens = VecDeque::new();
    for c in s.chars() {
        if let Some(token) = match c {
            '>' => Some(Token::IncCellPointer),
            '<' => Some(Token::DecCellPointer),
            '+' => Some(Token::Plus),
            '-' => Some(Token::Minus),
            '.' => Some(Token::Output),
            ',' => Some(Token::Input),
            '[' => Some(Token::ScopeStart),
            ']' => Some(Token::ScopeEnd),
            _ => None,
        } {
            tokens.push_back(token);
        };
    }
    tokens
}

enum IR {
    IncrementPointer,
    DecrementPointer,
    IncrementValue,
    DecrementValue,
    OutputValue,
    InputValue,
    Scope(Vec<IR>),
}

fn analyze(tokens: &mut VecDeque<Token>) -> IR {
    let mut ir = Vec::new();
    while let Some(t) = tokens.pop_front() {
        match t {
            Token::ScopeEnd => return IR::Scope(ir),
            Token::DecCellPointer => ir.push(IR::DecrementPointer),
            Token::IncCellPointer => ir.push(IR::IncrementPointer),
            Token::ScopeStart => ir.push(analyze(tokens)),
            Token::Output => ir.push(IR::OutputValue),
            Token::Input => ir.push(IR::InputValue),
            Token::Plus => ir.push(IR::IncrementValue),
            Token::Minus => ir.push(IR::DecrementValue),
        }
    }

    IR::Scope(ir)
}

fn generate(ir: &IR, scope: &mut usize) -> String {
    let this_scope = *scope;
    *scope += 1;
    let mut program = if this_scope == 0 {
        String::from_str(HEADER).unwrap()
    } else {
        // assembly for scope start
        format!(
            r#"
; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end{0}                        ; if cell is zero, don't enter scope
start{0}:
                
            "#,
            this_scope - 1
        )
    };

    let ir = match ir {
        IR::Scope(inner) => inner,
        _ => panic!("something is very wrong, scope isn't a IR::Scope"),
    };

    for instr in ir {
        match instr {
            &IR::IncrementPointer => program += INC,
            &IR::DecrementPointer => program += DEC,
            &IR::IncrementValue => program += ADD,
            &IR::DecrementValue => program += SUB,
            &IR::OutputValue => program += OUTPUT,
            &IR::InputValue => program += INPUT,
            &IR::Scope(_) => program += &generate(&instr, scope),
        }
    }

    if this_scope == 0 {
        program += FOOTER;
    } else {
        // assembly for scope end
        program += &format!(
            r#"
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end{0}                        ; if cell is zero jump to end
        JMP start{0}                     ; else continue
end{0}:        
        "#,
            this_scope - 1
        );
    }
    program
}

#[derive(Parser, Debug)]
#[command(version, about, long_about = None)]
struct Args {
    /// Brainfuck file to compile
    input_file: String,

    /// Output file for nasm assembly
    #[arg(short, long, default_value_t=format!("out.asm"))]
    output_file: String,
}

fn main() {
    let cli = Args::parse();

    let bf_prog = fs::read_to_string(cli.input_file).unwrap();

    let assembly_output = generate(&analyze(&mut parse(&bf_prog)), &mut 0);

    fs::write(cli.output_file, assembly_output).unwrap();
}
