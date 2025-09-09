load ArrMin.asm,
output-file ArrMin05.out,
compare-to ArrMin05.cmp,
output-list RAM[0]%D1.6.1 RAM[1]%D1.6.1 RAM[2]%D1.6.1 RAM[20]%D1.6.1 RAM[21]%D1.6.1 RAM[22]%D1.6.1 RAM[23]%D1.6.1 RAM[24]%D1.6.1 RAM[25]%D1.6.1;

set PC 0,
set RAM[0] 0,
set RAM[1] 20,
set RAM[2] 6,
set RAM[20] 0,
set RAM[21] 2,
set RAM[22] 0,
set RAM[23] 3,
set RAM[24] 2,
set RAM[25] 1;
repeat 100 {
    ticktock;
}
set RAM[1] 20,
set RAM[2] 6,
set RAM[20] 0,
set RAM[21] 2,
set RAM[22] 0,
set RAM[23] 3,
set RAM[24] 2,
set RAM[25] 1,
output;
