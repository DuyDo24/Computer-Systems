// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@R1
D=M
@BASE
M=D

@R2
D=M
@LEN
M=D

@LEN
D=M
@END
D;JEQ

@BASE
A=M
D=M
@MIN
M=D

@LEN
M=M-1

@BASE
D=M
@I
M=D

(LOOP)
@LEN
D=M
@ENDLOOP
D;JEQ

@I
A=M
D=M
@MIN
D=D-M
@SKIP
D;JGE

@I
A=M
D=M
@MIN
M=D
(SKIP)

@I
M=M+1

@LEN
M=M-1
@LOOP
0;JMP

(ENDLOOP)
@MIN
D=M
@R0
M=D
(END)
@END
0;JMP
