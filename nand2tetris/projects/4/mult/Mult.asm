// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//  n = 0
// LOOP:
//  if (n == R1) goto END
//  n = n + 1
//  R2 = R2 + R0
//goto LOOP
//  END:
  @n
  M=0
  @R2
  M=0
(LOOP)
  @n
  D=M
  @R1
  D=D-M
  @END
  D;JEQ
  @n
  M=M+1
  @R0
  D=M
  @R2
  M=D+M
  @LOOP
  0;JMP
(END)
  @END
  0;JMP
