use std::{collections::VecDeque, str::FromStr};

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

fn generate(ir: &IR, scope: usize) -> String {
    let mut program = String::from_str(
        "
        segment
        ",
    )
    .unwrap();

    program
}

const TEST_PROG: &'static str =
    "}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}{)[}}}(})]({";

fn main() {
    print!("{}", generate(&analyze(&mut parse(TEST_PROG)), 0));
}
