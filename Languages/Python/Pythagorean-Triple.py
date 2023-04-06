
##
#  A program that prints the first Pythagorean triple it finds.
#
#  The Pythagorean triple formula is: a² + b² = c²
#  This program should print the following: 3² + 4² = 5²
##

def main():
  for c in range(1, 11):
    for a in range(1, 11):
      for b in range(1, 11):
        if (a**2) + (b**2) == (c**2):
          print("Found a Pythagorean triple: %i² + %i² = %i²" % (a ,b ,c))
          return

if __name__=="__main__":
  main()
