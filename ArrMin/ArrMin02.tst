load ArrMin.asm,
output-file ArrMin02.out,
compare-to ArrMin02.cmp,
output-list RAM[0]%D1.6.1 RAM[1]%D1.6.1 RAM[2]%D1.6.1 RAM[20]%D1.6.1 RAM[21]%D1.6.1 RAM[22]%D1.6.1 RAM[23]%D1.6.1;

set PC 0,
set RAM[0] 0,
set RAM[1] 20,
set RAM[2] 4,
set RAM[20] 10,
set RAM[21] 5,
set RAM[22] 12,
set RAM[23] 7;
repeat 100 {
    ticktock;
}
set RAM[1] 20,
set RAM[2] 4,
set RAM[20] 10,
set RAM[21] 5,
set RAM[22] 12,
set RAM[23] 7,
output;
