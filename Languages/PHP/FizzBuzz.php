<?php
// NOTE: This was made using PHP 7.4.21 (cli)

$LOOPS = 100;

/*
  A Program that loops from 1 to the number in the above "LOOPS" variable
  and prints the corresponding FizzBuzz value for each number.

  Divisible by 3: "Fizz"
  Divisible by 5: "Buzz"
  Divisible by 3 and 5: "FizzBuzz"
  Else, just print the current number.
*/

for($i = 1; $i<=$LOOPS; $i++) {
  if ($i%15 == 0)       // Divisible by 3 and 5 (so 15 here) outputs "FizzBuzz"
    print("FizzBuzz");
  elseif ($i%3 == 0)    // Divisible by 3 outputs "Fizz"
    print("Fizz");
  elseif ($i%5 == 0)    // Divisible by 5 outputs "Buzz"
    print("Buzz");
  else                  // If none above work then output the number itself.
    print($i);
  print("\n");          // The line break is here just because i wanted it here. :)
}

/*
  PHP is cool, but the built-in functions are really verbose.
*/
