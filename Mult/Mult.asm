// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@R1
D=M
@SIGN1
M=D
@0
D;JGE
@R1
D=M
D=-D
@R1
M=D

@R2
D=M
@SIGN2
M=D
@0
D;JGE
@R2
D=M
D=-D
@R2
M=D

@R0
M=0
@R2
D=M
@LOOP
D;JEQ

@R2
D=M
D;JEQ
@R1
D=M
@R0
D=D+M
@R0
M=D

@R2
M=M-1
@LOOP
0;JMP

@SIGN1
D=M
@0
D;JLT
@SIGN2
D=M
@0
D;JLT
@R0
0;JMP
@R0
M=-M
(ENDLOOP)
@ENDLOOP
0;JMP
