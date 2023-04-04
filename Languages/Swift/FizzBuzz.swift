
var LOOPS: Int = 100;

/*
  A Program that loops from 1 to the number in the above "LOOPS" variable
  and prints the corresponding FizzBuzz value for each number.

  Divisible by 3: "Fizz"
  Divisible by 5: "Buzz"
  Divisible by 3 and 5: "FizzBuzz"
  Else, just print the current number.
*/

for i: Int in 1...LOOPS {
  if i%15 == 0 {        // Divisible by 3 and 5 (so 15 here) outputs "FizzBuzz"
    print("FizzBuzz")
  }
  else if i%3 == 0 {    // Divisible by 3 outputs "Fizz"
    print("Fizz")
  }
  else if i%5 == 0 {    // Divisible by 5 outputs "Buzz"
    print("Buzz")
  }
  else {                // If none above work then output the number itself.
    print(i);
  }
}

/*
  "Okay. What you're doing there is jumping.
   You just... you just jumped. But nevermind.
   Say 'Apple'. 'Aaaapple."
  
  "How would you use it in a sentence?
   'Mmm, this apple's crunchy,' you might say.
   And I'm not even asking you for the whole sentence.
   Just the word 'Apple'."

  - Wheatley, 999999999... - (Valve, 2011)
*/
