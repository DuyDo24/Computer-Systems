@R2
D=M
@2
D=D-A
@COMPLETE
D;JLT

@R2
D=M
@1
D=D-A
@outer_count
M=D

(OUTER)
@outer_count
D=M
@COMPLETE
D;JEQ

@0
D=A
@inner_count
M=D

@R1
D=M
@ptr
M=D

(INNER)
@inner_count
D=M
@outer_count
D=D-M
@OUTER_NEXT
D;JGE

@ptr
A=M
D=M
@val1
M=D

@ptr
A=M
@1
A=A+1
D=M
@val2
M=D

@val1
D=M
@val2
D=D-M
@NO_SWAP
D;JLE

@val2
D=M
@ptr
A=M
M=D

@val1
D=M
@ptr
A=M
@1
A=A+1
M=D

(NO_SWAP)
@ptr
M=M+1
@inner_count
M=M+1
@INNER
0;JMP

(OUTER_NEXT)
@outer_count
M=M-1
@OUTER
0;JMP

(COMPLETE)
@R0
M=-1
@END
0;JMP

(END)
@END
0;JMP