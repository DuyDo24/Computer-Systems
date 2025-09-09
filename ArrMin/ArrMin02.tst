load Min.asm,
output-file Min02.out,
compare-to Min02.cmp,
output-list RAM[0] %D1.6.1;

set RAM[1] 10, 
set RAM[2] 4,  
set RAM[10] -5,
set RAM[11] 0,
set RAM[12] -2,
set RAM[13] 3,
run;
