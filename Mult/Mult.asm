// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@R0
M=0
@R1
D=M
@END
D;JEQ
@R2
D=M
@END
D;JEQ
@R1
D=M
@NEGATIVE1
D;JLT
@R2
D=M
@NEGATIVE2
D;JLT
@POSITIVE
0;JMP

(NEGATIVE1)
@R2
D=M
@BOTHNEGATIVE
D;JLT
@R1
M=-M
@POSITIVE
0;JMP

(NEGATIVE2)
@R2
M=-M
@POSITIVE
0;JMP

(BOTHNEGATIVE)
@R1
M=-M
@R2
M=-M

(POSITIVE)
@R1
D=M
@R2
D=D-M
@SWAP
D;JGT

(LOOP)
@R1
D=M
@NEGATE
D;JEQ
@R2
D=M
@R0
M=D+M
@R1
M=M-1
@LOOP
0;JMP

(SWAP)
@R1
D=M
@temp
M=D
@R2
D=M
@R1
M=D
@temp
D=M
@R2
M=D
@LOOP
0;JMP

(NEGATE)
@R1
D=M
@R2
D=M+D
@END2
D;JEQ
@R0
M=-M

(END2)
(END)
@END
0;JMP