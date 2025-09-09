load ArrMin.asm,
output-file ArrMin05.out,
compare-to ArrMin05.cmp,
output-list RAM[0..25] %D1.6.1;

set RAM[1] 20,
set RAM[2] 6,
set RAM[20] 0,
set RAM[21] 2,
set RAM[22] 0,
set RAM[23] 3,
set RAM[24] 2,
set RAM[25] 1,
run;
