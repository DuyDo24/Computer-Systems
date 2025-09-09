load Sort.asm,
output-file Sort01.out,
compare-to Sort01.cmp,
output-list RAM[0] %D1.6.1;

set RAM[1] 16,
set RAM[2] 5,
set RAM[16] 7,
set RAM[17] 3,
set RAM[18] 9,
set RAM[19] 2,
set RAM[20] 5,
run;
