load Mult.asm,
output-file Mult01.out,
compare-to Mult01.cmp,
output-list RAM[0]%D1.6.1 RAM[1]%D1.6.1 RAM[2]%D1.6.1;

set PC 0,
set RAM[0] 0,
set RAM[1] 3,
set RAM[2] 4;
repeat 100 {
    ticktock;
}
set RAM[1] 3,
set RAM[2] 4,
output;
