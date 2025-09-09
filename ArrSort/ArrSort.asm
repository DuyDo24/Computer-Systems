// Sorts the array of length R2 whose first element is at RAM[R1] in ascending order in place. Sets R0 to True (-1) when complete.
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

@R0
M=-1

@LEN
D=M
@END
D;JEQ

@BASE
D=M
@I
M=D

(OUTER)
@LEN
D=M
@ENDLOOP
D;JEQ

@I
D=M
@J
M=D

@LEN
D=M
@OUTERLEN
M=D

(INNER)
@J
D=M
@OUTERLEN
D=D-M
@SKIP
D;JEQ

@J
D=M
A=D
D=M
@J
A=M+1
D=D-M
@NOSWAP
D;JLE

@J
A=M
D=M
@J
A=M+1
D=D-M
@J
A=M
M=D
@J
A=M+1
M=D
(NOSWAP)

@J
M=M+1
@INNER
0;JMP

@OUTERLEN
M=M-1
@OUTER
0;JMP

(ENDLOOP)
@R0
M=-1
(END)
@END
0;JMP
