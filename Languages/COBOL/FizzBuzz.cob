      *
      * A Program that loops from 1 to the number in the data section's
      * 'loops' value (Line 000023) and prints the corresponding
      * FizzBuzz value for each number.
      *
      * Divisible by 3: "Fizz"
      * Divisible by 5: "Buzz"
      * Divisible by 3 and 5: "FizzBuzz"
      * Else, just print the current number.
      *
000010 IDENTIFICATION DIVISION.
000011   PROGRAM-ID. "FIZZBUZZ".
      *
000020 DATA DIVISION.
000021   WORKING-STORAGE SECTION.
000022   01 num PIC 9(3).
000023   01 loops PIC 9(3) VALUE 100.
      *
000030 PROCEDURE DIVISION.
000031   PERFORM VARYING num FROM 1 BY 1 UNTIL num > loops
000032     IF FUNCTION MOD (num 15) = 0 THEN DISPLAY "FizzBuzz"
000033     ELSE IF FUNCTION MOD (num 3) = 0 THEN DISPLAY "Fizz"
000034     ELSE IF FUNCTION MOD (num 5) = 0 THEN DISPLAY "Buzz"
000035     ELSE DISPLAY num
000036   END-PERFORM.
      *
000040 STOP RUN.
