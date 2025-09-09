// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@R1
D=M
@addr
M=D

@R2
D=M
@count
M=D

@addr
A=M
D=M
@min
M=D

@count
M=M-1

(LOOP)
@count
D=M
@END
D;JEQ

@addr
M=M+1
A=M
D=M
@min
D=D-M
@SKIP
D;JGE
@addr
A=M
D=M
@min
M=D
(SKIP)

@count
M=M-1
@LOOP
0;JMP

(END)
@min
D=M
@R0
M=D
(ENDLOOP)
@ENDLOOP
0;JMP
