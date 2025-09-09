load Mult.asm,
output-file Mult06.out,
compare-to Mult06.cmp,
output-list RAM[0] %D1.6.1;

set RAM[1] 123,
set RAM[2] 100,
run;
