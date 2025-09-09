// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@1
A=M
D=M
@0
M=D
@2
D=M
@10
M=1
(LOOP)
@10
D=M
@2
D=D-M
@END
D;JGE
@1
D=M
@10
A=D+A
D=M
@0
D=D-M
@NEXT
D;JGE
@0
M=D
(NEXT)
@10
M=M+1
@LOOP
0;JMP
(END)
@END
0;JMP
