;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; START of the header ;;;;;

.Orig x0
INIT_CODE
; Stack will be all of the unused memory.
; The stack grows down, so if we start at address 0, the first PUSH will be to 0xFFFF.
XOR R5, R5, R5
ADD R6, R5, #0
LD R4, GLOBAL_DATA_POINTER
LD R7, GLOBAL_MAIN_POINTER
jsrr R7

; The main function has finished, try to exit.
DONE:
    OUT r0, 0
    BR DONE

GLOBAL_DATA_POINTER .FILL GLOBAL_DATA_START
GLOBAL_MAIN_POINTER .FILL main

;;;; END of the header ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
