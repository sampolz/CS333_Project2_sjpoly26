CS333 - Project 2 - README
Sam Polyakov
09/27/2023
Google Sites URL: https://sites.google.com/colby.edu/sjpoly26-cs333/home

Directory Layout:
├── C tasks
│   ├── counter
│   ├── counter.yy
│   ├── counter.yy.c
│   ├── encode
│   ├── encode.yy
│   ├── encode.yy.c
│   ├── htmlStrip
│   ├── htmlStrip.yy
│   ├── htmlStrip.yy.c
│   ├── htmltest.txt
│   ├── htmltest2.txt
│   ├── p2-example.c
│   ├── parser
│   ├── parser.yy
│   ├── parser.yy.c
│   └── testing.txt
├── README.txt
├── Rust
│   ├── hello
│   └── hello.rs
└── Swift
    └── helloWorld.swift

Run and build configuration for C:
Apple clang version 15.0.0 (clang-1500.0.40.1)

Run and build configuration for Swift and Rust:
Apple Swift version 5.9 (swiftlang-5.9.0.128.108 clang-1500.0.40.1)
Target: arm64-apple-darwin23.0.0

rustc 1.72.1 (d5c2e9c34 2023-09-13)


C:
All of the parts of the C portion of project 2

Encode:
TO RUN:
flex -o encode.yy.c encode.yy
gcc -o encode encode.yy.c -ll 
./encode

Output:
abcd
nopq
nopq
abcd
oaibfnoebsiwalir
bnvosabrofvjnyve
bnvosabrofvjnyve
oaibfnoebsiwalir


Counter:
TO RUN:
flex -o counter.yy.c counter.yy
gcc -o counter counter.yy.c -ll
./counter **FILENAME.TXT** (I used testing.txt)

Output:
There are 14 vowels in the file.
There are 8 rows in the file.
There are 64 characters in the file.


htmlStrip:
TO RUN:
flex -o htmlStrip.yy.c htmlStrip.yy
gcc -o htmlStrip htmlStrip.yy.c -ll
./htmlStrip **filename.txt** (I used htmltest.txt)     

Output:
This is a page title

Here is a header
Here is some body  text in a paragraph
Here is a link to cs.colby.edu
inside a paragraph.

<!-- Here is a multi-line
This is the paragraph we should ignore because it is in a comment.
Bonus if you remove this!
 comment -->
 
This is the final paragraph.


Parser:
TO RUN:
flex -o parser.yy.c parser.yy
gcc -o parser parser.yy.c -ll 
./parser  **FILENAME.txt** (I used p2-example.c)

Output:
Keyword-int
Identifier- main
Open-paren
Close-paren
Open-bracket
Keyword-int
Identifier- a
Assignment
Integer-6
Keyword-int
Identifier- b
Assignment
Float-5.0
Keyword-if
Open-paren
Identifier- a
Identifier- b
Close-paren
Open-bracket
Identifier- a
Assignment
Identifier- a
Open-bracket
Identifier- b
Close-bracket
Close-bracket


Swift:
TO RUN:
swift helloWorld.swift

Output:
Hello, world!
Albert's birthday is on: 12/1/2003
Sam's birthday is on: 10/5/2003

What year were you born?
1996
You were born 7 years before Albert and Sam

Extension 1:
- Implemented user input for both Swift and Rust programs
- Programs adapted to user input


Extension 2:
Rust:
TO COMPILE:
rustc hello.rs

TO RUN:
./hello

Output:
Pick a number from one to ten! I will try to guess it!
3
I guessed wrong number :(. Let's try again... (enter a number)
2
I guessed wrong number :(. Let's try again... (enter a number)
1
I guessed wrong number :(. Let's try again... (enter a number)
5
I guessed the right number!



