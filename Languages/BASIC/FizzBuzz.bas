10  LET LOOPS = 100
11  '
12  ' A Program that loops from 1 to the number in the above "LOOPS" variable
13  ' and prints the corresponding FizzBuzz value for each number.
14  '
15  ' Divisible by 3: "Fizz"
16  ' Divisible by 5: "Buzz"
17  ' Divisible by 3 and 5: "FizzBuzz"
18  ' Else, just print the current number.
19  '
20  FOR i = 1 TO LOOPS
21    ' I'm not smart and my interpreter just didn't work so forgive me for this sin.
30    LET WHAT = 0
31    ' Add 1 to 'WHAT' if divisible by 3
40    IF i MOD 3 = 0 THEN LET WHAT = WHAT + 1
41    ' Add 2 to 'WHAT' if divisible by 5
50    IF i MOD 5 = 0 THEN LET WHAT = WHAT + 2
51    ' If not divisible by 3 nor 5 then print number.
60    IF WHAT = 0 THEN PRINT i;
61    ' If divisible by 3 then print "Fizz"
70    IF WHAT = 1 THEN PRINT "Fizz";
71    ' If divisible by 5 then pring "Buzz"
80    IF WHAT = 2 THEN PRINT "Buzz";
81    ' If divisible by 3 and 5 then print "FizzBuzz"
90    IF WHAT = 3 THEN PRINT "FizzBuzz";
91  ' Move 'i' forward by 1 and restart the loop.
100 NEXT i