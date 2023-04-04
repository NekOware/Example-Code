
var LOOPS = 100;

/*
  A Program that loops from 1 to the number in the above "LOOPS" variable
  and prints the corresponding FizzBuzz value for each number.

  Divisible by 3: "Fizz"
  Divisible by 5: "Buzz"
  Divisible by 3 and 5: "FizzBuzz"
  Else, just print the current number.
*/

for(let i=1; i<=100; i++) {
  if(i%15 == 0)               // Divisible by 3 and 5 (so 15 here) outputs "FizzBuzz"
    console.log("FizzBuzz");
  else if(i%3 == 0)           // Divisible by 3 outputs "Fizz"
    console.log("Fizz");
  else if(i%5 == 0)           // Divisible by 5 outputs "Buzz"
    console.log("Buzz");
  else                        // If none above work then output the number itself.
    console.log(i);
}
