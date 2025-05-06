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

// Assembly for adding n
fn add(n: u8) -> String {
    format!(
        r#"
        mov eax, {n}                     ; add n to current cell
        call add                       ; add value to cell
"#
    )
}

// Assembly for subtracting n
fn sub(n: u8) -> String {
    format!(
        r#"
        mov eax, {n}                     ; sub n from current cell
        call sub                       ; sub value from cell
"#
    )
}

// Assembly for incrementing cell pointer by n
fn inc(n: u32) -> String {
    format!(
        r#"
        add ebx, {n}                      ; move cell-pointer (increment)
"#
    )
}

// Assembly for decrementing cell pointer
fn dec(n: u32) -> String {
    format!(
        r#"
        sub ebx, {n}                      ; move cell-pointer (decrement)
"#
    )
}

// Assembly for outputing current cell as ascii
fn output(n: u32) -> String {
    format!(
        r#"
        mov eax, {n}  ; move number of characters to output into eax register
        call output
"#
    )
}

// Assembly for taking one ascii char as input to current cell
fn input(n: u32) -> String {
    format!(
        r#"
        mov eax, {n}  ; move number of characters to input into eax register
        call input
"#
    )
}

// Assembly for zeroing current cell
fn zero_cell() -> String {
    String::from_str(
        r#"            
            mov edx, MEM                   ; get base address of cells
            add dx, bx                     ; add offset (cell counter)
            mov [edx], 0x0                 ; move zero into cell ( bf - "[-]" )
        "#,
    )
    .unwrap()
}

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
    // u32 denotes how many cells to move (optimization)
    IncrementPointer(u32),

    // u32 denotes how many cells to move (optimization)
    DecrementPointer(u32),

    // u8 denotes how much to add (optimization)
    IncrementValue(u8),

    // u8 denotes how much to sub (optimization)
    DecrementValue(u8),

    // Zero cell imediatly using mov in case of "[-]"(optimization)
    ZeroCell,

    // Output values in sequential cells in case of ".>.>.>.>.>"(optimization)
    OutputValue(u32),

    // Input values to sequential cells in case of ",>,>,>,>,>"(optimization)
    InputValue(u32),

    // "Scopes" are between '[' and ']'
    Scope(Vec<IR>),
}

fn analyze(tokens: &mut VecDeque<Token>) -> IR {
    let mut ir = Vec::new();
    while let Some(t) = tokens.pop_front() {
        match t {
            Token::ScopeEnd => return IR::Scope(ir),
            Token::DecCellPointer => {
                let mut count = 1;
                loop {
                    match tokens.pop_front() {
                        Some(Token::DecCellPointer) => count += 1,
                        e => {
                            if e.is_some() {
                                tokens.push_front(e.unwrap());
                            }
                            break;
                        }
                    }
                }
                ir.push(IR::DecrementPointer(count))
            }
            Token::IncCellPointer => {
                let mut count = 1;
                loop {
                    match tokens.pop_front() {
                        Some(Token::IncCellPointer) => count += 1,
                        e => {
                            if e.is_some() {
                                tokens.push_front(e.unwrap());
                            }
                            break;
                        }
                    }
                }
                ir.push(IR::IncrementPointer(count))
            }
            Token::ScopeStart => ir.push(analyze(tokens)), // change to account for possible "[-]" (ZeroCell)
            Token::Output => {
                ir.push(IR::OutputValue(1))
                // NOT DONE
                // let mut count = 1;
                // loop {
                //     match tokens.pop_front() {
                //         Some(Token::Output) => count += 1,
                //         e => {
                //             if e.is_some() {
                //                 tokens.push_front(e.unwrap());
                //             }
                //             break;
                //         }
                //     }
                // }
                // ir.push(IR::OutputValue(count))
            }
            Token::Input => {
                ir.push(IR::InputValue(1));
                // NOT DONE
                // let mut count = 1;
                // loop {
                //     match tokens.pop_front() {
                //         Some(Token::Input) => count += 1,
                //         e => {
                //             if e.is_some() {
                //                 tokens.push_front(e.unwrap());
                //             }
                //             break;
                //         }
                //     }
                // }
                // ir.push(IR::InputValue(count))
            }
            Token::Plus => {
                let mut count = 1;
                loop {
                    match tokens.pop_front() {
                        Some(Token::Plus) => count += 1,
                        e => {
                            if e.is_some() {
                                tokens.push_front(e.unwrap());
                            }
                            break;
                        }
                    }
                }
                ir.push(IR::IncrementValue(count))
            }
            Token::Minus => {
                let mut count = 1;
                loop {
                    match tokens.pop_front() {
                        Some(Token::Minus) => count += 1,
                        e => {
                            if e.is_some() {
                                tokens.push_front(e.unwrap());
                            }
                            break;
                        }
                    }
                }
                ir.push(IR::DecrementValue(count))
            }
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
            &IR::IncrementPointer(n) => program += &inc(n),
            &IR::DecrementPointer(n) => program += &dec(n),
            &IR::IncrementValue(n) => program += &add(n),
            &IR::DecrementValue(n) => program += &sub(n),
            &IR::OutputValue(n) => program += &output(n),
            &IR::InputValue(n) => program += &input(n),
            &IR::Scope(_) => program += &generate(&instr, scope),
            &IR::ZeroCell => program += &zero_cell(),
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

#[derive(Parser)]
#[command(version, about = "Compiles brainfuck to x86 nasm assembly", long_about = None)]
struct Args {
    /// Brainfuck file to compile
    input_file: String,

    /// Output file for nasm assembly
    #[arg(short, long, default_value_t=format!("out.asm"), value_name="FILE")]
    output_file: String,
}

fn main() {
    let cli = Args::parse();

    let bf_prog = fs::read_to_string(cli.input_file).unwrap();

    let assembly_output = generate(&analyze(&mut parse(&bf_prog)), &mut 0);

    fs::write(cli.output_file, assembly_output).unwrap();
}
