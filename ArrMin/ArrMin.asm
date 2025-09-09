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
@counter
M=D

@R1
D=M
@1
D=D+A
@current_addr
M=D

(LOOP)
@counter
D=M
@END
D;JEQ

@current_addr
A=M
D=M
@R0
D=D-M
@UPDATE_MIN
D;JLT

@CONTINUE
0;JMP

(UPDATE_MIN)
@current_addr
A=M
D=M
@R0
M=D

(CONTINUE)
@current_addr
M=M+1
@counter
M=M-1
@LOOP
0;JMP

(END)
@END
0;JMP