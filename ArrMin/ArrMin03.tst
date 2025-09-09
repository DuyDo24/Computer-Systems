load ArrMin.asm,
output-file ArrMin03.out,
compare-to ArrMin03.cmp,
output-list RAM[0..14] %D1.6.1;

set RAM[1] 10,
set RAM[2] 5,
set RAM[10] -3,
set RAM[11] -8,
set RAM[12] -1,
set RAM[13] -7,
set RAM[14] -5,
run;
