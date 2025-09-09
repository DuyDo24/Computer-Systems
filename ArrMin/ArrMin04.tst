load ArrMin.asm,
output-file ArrMin04.out,
compare-to ArrMin04.cmp,
output-list RAM[0]%D1.6.1 RAM[1]%D1.6.1 RAM[2]%D1.6.1 RAM[20]%D1.6.1;

set PC 0,
set RAM[0] 0,
set RAM[1] 20,
set RAM[2] 1,
set RAM[20] 42;
repeat 100 {
    ticktock;
}
set RAM[1] 20,
set RAM[2] 1,
set RAM[20] 42,
output;
