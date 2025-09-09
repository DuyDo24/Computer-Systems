load AddSub.asm,
output-file AddSub01.out,
compare-to AddSub01.cmp,
output-list RAM[0] %D1.6.1;

set RAM[1] 7,   // R1 = 7
set RAM[2] 4,   // R2 = 4
set RAM[3] 2,   // R3 = 2
run;
