// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.
(LOOP)
  @KBD
  D=M
  @CLEARSET
  D;JEQ
  @R0 //R0 키입력시 -1, 미입력시 0 저장
  M=-1
(RETURN)
  @FILL
  0;JMP

(CLEARSET)
  @R0
  M=0
  @RETURN
  0;JMP

(FILL)
  @R1 //R1 루프 카운터
  M=0
(FILLLOOP)
  @R1
  D=M
  @8192
  D=D-A
  @LOOP
  D;JEQ
  @SCREEN
  D=A
  @R1
  D=D+M
  @R2 //R2 포인팅된 주소 저장
  M=D
  @R0
  D=M
  @R2
  A=M
  M=D
  @R1
  M=M+1
  @FILLLOOP
  0;JMP
