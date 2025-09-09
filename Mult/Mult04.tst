load Mult.asm,
output-file Mult05.out,
compare-to Mult05.cmp,
output-list RAM[0] %D1.6.1;

set RAM[1] 8,
set RAM[2] -4,
run;
