load Abs.asm,
output-file Abs03.out,
compare-to Abs03.cmp,
output-list RAM[0]%D1.6.1 RAM[1]%D1.6.1;

set PC 0,
set RAM[0] 0,
set RAM[1] -7;
repeat 100 {
    ticktock;
}
set RAM[1] -7,
output;