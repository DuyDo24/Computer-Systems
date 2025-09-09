// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@0
M=0
@1
D=M
@3
M=D
@2
D=M
@4
M=D
(LOOP)
@4
D=M
@END
D;JEQ
@0
D=M
@3
D=D+M
@0
M=D
@4
M=M-1
@LOOP
0;JMP
(END)
@END
0;JMP
