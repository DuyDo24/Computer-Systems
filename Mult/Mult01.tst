load Mult.asm,
output-file Mult01.out,
compare-to Mult01.cmp,
output-list RAM[0] %D1.6.1;

set RAM[1] 3,
set RAM[2] 4,
run;
