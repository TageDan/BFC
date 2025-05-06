# BFC
A brainfuck compiler. Compiles the esolang brainfuck into x86 nasm-assembly.

## Requirements
Since BFC produces nasm assembly and not a binary you will need:
* [NASM](https://github.com/netwide-assembler/nasm)
* A linker (for example `ld`)

Also BFC produces a x86 assembly using linux syscalls so you will also need:
* Linux
* A x86/x86_64 cpu

## Install
If you have Cargo installed you can install BFC by running the following command
```
cargo install --git https://github.com/TageDan/BFC.git
```

Alternatively you can clone this repo and build it yourself.

## Usage
The BFC help message looks like this.
```
$ BFC --help
Compiles brainfuck to x86 nasm assembly

Usage: BFC [OPTIONS] <INPUT_FILE>

Arguments:
  <INPUT_FILE>  Brainfuck file to compile

Options:
  -o, --output-file <FILE>  Output file for nasm assembly [default: out.asm]
  -h, --help                Print help
  -V, --version             Print version
```

So as an example you could compile brainfuck.bf into brainfuck.asm like this
```
$ BFC -o brainfuck.asm brainfuck.bf
```

If you want to run the assembly you will need to assemble and link it. To do everything at once you can run the `run` bash script which will do the following:
```
BFC $1 #compile input <FILE>
nasm -f elf32 out.asm # assemble out.asm
ld -m elf_i386 -o out out.o # link object file
chmod +x out # make out executable
./out # run out
rm out.o # delete object file
```


# Acknowledgements
Thanks to reddit user [danielcristofani](https://www.reddit.com/user/danielcristofani/) for finding a bug in the generated assembly. (see [this](https://www.reddit.com/r/brainfuck/comments/1kfeblm/comment/mquuknm/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button) comment)
