#include <stdio.h>
#define loops 100

/*
  A Program that loops from 1 to the above '#define'd number and prints
  the corresponding FizzBuzz value for each number.

  Divisible by 3: "Fizz"
  Divisible by 5: "Buzz"
  Divisible by 3 and 5: "FizzBuzz"
  Else, just print the current number.
*/

int main(void) {
  for (int i=1; i<=loops; i++) {
    if (i%15 == 0)          // Divisible by 3 and 5 (so 15 here) outputs "FizzBuzz"
      printf("FizzBuzz");
    else if (i%3 == 0)      // Divisible by 3 outputs "Fizz"
      printf("Fizz");
    else if (i%5 == 0)      // Divisible by 5 outputs "Buzz"
      printf("Buzz");
    else                    // If none above work then output the number itself.
      printf("%i", i);
    printf("\n");           // The line break is here just because i wanted it here. :)
  }
  return 0;
}
