load ArrMin.asm,
output-file ArrMin04.out,
compare-to ArrMin04.cmp,
output-list RAM[0..20] %D1.6.1;

set RAM[1] 20,
set RAM[2] 1,
set RAM[20] 42,
run;
