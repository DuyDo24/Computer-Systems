load Mult.asm,
output-file Mult02.out,
compare-to Mult02.cmp,
output-list RAM[0]%D1.6.1 RAM[1]%D1.6.1 RAM[2]%D1.6.1;

set PC 0,
set RAM[0] 0,
set RAM[1] -5,
set RAM[2] 6;
repeat 100 {
    ticktock;
}
set RAM[1] -5,
set RAM[2] 6,
output;
