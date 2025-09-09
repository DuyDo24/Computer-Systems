load ArrSort.asm,
output-file ArrSort05.out,
compare-to ArrSort05.cmp,
output-list RAM[0..20] %D1.6.1;

set RAM[1] 20,
set RAM[2] 1,
set RAM[20] 42,
run;
