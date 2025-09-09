load ArrMin.asm,
output-file ArrMin02.out,
compare-to ArrMin02.cmp,
output-list RAM[0..23] %D1.6.1;

set RAM[1] 20,
set RAM[2] 4,
set RAM[20] 10,
set RAM[21] 5,
set RAM[22] 12,
set RAM[23] 7,
run;
