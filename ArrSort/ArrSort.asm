@val1
M=0
@val2
M=0
@outer_count
M=0
@inner_count
M=0
@ptr
M=0

@R2
D=M
@1
D=D-A
@SET_R0
D;JLT

@R2
D=M
@2
D=D-A
@SET_R0
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
D;JLT

@inner_count
M=0

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

(SET_R0)
@R0
M=-1
@COMPLETE
0;JMP

(COMPLETE)
@END
0;JMP

(END)
@END
0;JMP