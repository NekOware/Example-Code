#include <stdio.h>

/*
  A program that prints the first Pythagorean triple it finds.

  The Pythagorean triple formula is: a² + b² = c²
  This program should print the following: 3² + 4² = 5²
*/

int main(void) {
  for(int c=1; c<=10; c++) {
    for(int a=1; a<=10; a++) {
      for(int b=1; b<=10; b++) {
        if( (a*a) + (b*b) == (c*c) ) { // I'm too lazy to bring the "exp" from <math.h>
          printf("Found a Pythagorean triple: %i² + %i² = %i²\n", a, b, c);
          return 0;
        }
      }
    }
  }
  return 0;
}