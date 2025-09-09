load ArrSort.asm,
output-file ArrSort03.out,
compare-to ArrSort03.cmp,
output-list RAM[0]%D1.6.1 RAM[1]%D1.6.1 RAM[2]%D1.6.1 RAM[30]%D1.6.1 RAM[31]%D1.6.1 RAM[32]%D1.6.1 RAM[33]%D1.6.1;

set PC 0,
set RAM[0] 0,
set RAM[1] 30,
set RAM[2] 4,
set RAM[30] 10,
set RAM[31] 5,
set RAM[32] 12,
set RAM[33] 7;
repeat 100 {
    ticktock;
}
set RAM[1] 30,
set RAM[2] 4,
set RAM[30] 10,
set RAM[31] 5,
set RAM[32] 12,
set RAM[33] 7,
output;
