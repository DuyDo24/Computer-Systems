// Sorts the array of length R2 whose first element is at RAM[R1] in ascending order in place. Sets R0 to True (-1) when complete.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@R2
D=M
@LEN
M=D

@R1
D=M
@BASE
M=D

@R0
M=-1

(OUTER)
@LEN
D=M
@END
D;JEQ

@BASE
D=M
@I
M=D

@LEN
D=M
@J
M=D

(INNER)
@J
D=M
@I
D=D-M
@SKIP
D;JEQ

@I
D=M
A=D
D=M
@J
A=M
D=D-M
@NO_SWAP
D;JLE

@I
A=M
D=M
@J
A=M
D=D-M
@I
A=M
M=D
@J
A=M
D=M
@J
A=M
M=D
(NO_SWAP)

@J
M=M-1
@INNER
0;JMP

@LEN
M=M-1
@OUTER
0;JMP

(END)
@R0
M=-1
(ENDLOOP)
@ENDLOOP
0;JMP
