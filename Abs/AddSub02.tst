load AddSub.asm,
output-file AddSub02.out,
compare-to AddSub02.cmp,
output-list RAM[0] %D1.6.1;

set RAM[1] 10,   // R1 = 10
set RAM[2] 5,    // R2 = 5
set RAM[3] 20,   // R3 = 20
run;
