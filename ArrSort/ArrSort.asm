// Sorts the array of length R2 whose first element is at RAM[R1] in ascending order in place. Sets R0 to True (-1) when complete.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
LOAD R3, R2
SUB R3, R3, #1

OUTER_LOOP:
    CMP R3, #0
    BEQ SORT_COMPLETE
    LOAD R4, #0
    
    INNER_LOOP:
        CMP R4, R3
        BGE NEXT_PASS
        ADD R5, R1, R4
        LOAD R5, [R5]
        ADD R6, R1, R4
        ADD R6, R6, #1
        LOAD R6, [R6]
        CMP R5, R6
        BLE NO_SWAP
        ADD R7, R1, R4
        STORE [R7], R6
        ADD R7, R7, #1
        STORE [R7], R5
        
    NO_SWAP:
        ADD R4, R4, #1
        B INNER_LOOP
    
    NEXT_PASS:
        SUB R3, R3, #1
        B OUTER_LOOP

SORT_COMPLETE:
    LOAD R0, #-1