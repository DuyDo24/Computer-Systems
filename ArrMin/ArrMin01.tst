load ArrMin.asm,
output-file ArrMin01.out,
compare-to ArrMin01.cmp,
output-list RAM[0..14] %D1.6.1;

set RAM[1] 10,
set RAM[2] 5,
set RAM[10] 3,
set RAM[11] -7,
set RAM[12] 0,
set RAM[13] 5,
set RAM[14] -2,
run;
