@R2
D=M
@1
D=D-A
@SORT_COMPLETE
D;JLE

@R2
D=M
@1
D=D-A
@outer_passes
M=D

(OUTER_LOOP)
@outer_passes
D=M
@SORT_COMPLETE
D;JEQ

@outer_passes
D=M
@inner_count
M=D

@R1
D=M
@array_ptr
M=D

(INNER_LOOP)
@inner_count
D=M
@END_INNER
D;JEQ

@array_ptr
A=M
D=M
@temp1
M=D

@array_ptr
A=M
@1
A=A+1
D=M
@temp2
M=D

@temp1
D=M
@temp2
D=D-M
@NO_SWAP
D;JLE

@temp2
D=M
@array_ptr
A=M
M=D

@temp1
D=M
@array_ptr
A=M
@1
A=A+1
M=D

(NO_SWAP)
@array_ptr
M=M+1
@inner_count
M=M-1
@INNER_LOOP
0;JMP

(END_INNER)
@outer_passes
M=M-1
@OUTER_LOOP
0;JMP

(SORT_COMPLETE)
@R0
M=-1
@END
0;JMP

(END)
@END
0;JMP