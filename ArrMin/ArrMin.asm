@R2
D=M
@END
D;JEQ

@R1
A=M
D=M
@R0
M=D

@R2
D=M
@1
D=D-A
@END
D;JEQ

@counter
M=D

@R1
D=M
@1
D=D+A
@ptr
M=D

(LOOP)
@counter
D=M
@END
D;JEQ

@ptr
A=M
D=M
@R0
D=D-M
@UPDATE
D;JLT

@NEXT
0;JMP

(UPDATE)
@ptr
A=M
D=M
@R0
M=D

(NEXT)
@ptr
M=M+1
@counter
M=M-1
@LOOP
0;JMP

(END)
@END
0;JMP