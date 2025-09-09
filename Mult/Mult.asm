// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@R1
D=M
@MULT1
M=D

@R2
D=M
@MULT2
M=D

@R0
M=0

(LOOP)
@MULT2
D=M
@END
D;JEQ

@R0
D=M
@MULT1
A=M
D=D+A
@R0
M=D

@MULT2
M=M-1
@LOOP
0;JMP

(END)
@R0
D=M
@R0
M=D
(ENDLOOP)
@ENDLOOP
0;JMP
