
LOOPS = 100

##
#  A Program that loops from 1 to the number in the above "LOOPS" variable
#  and prints the corresponding FizzBuzz value for each number.
#
#  Divisible by 3: "Fizz"
#  Divisible by 5: "Buzz"
#  Divisible by 3 and 5: "FizzBuzz"
#  Else, just print the current number.
##

def main():
  for i in range(1, LOOPS+1):
    if (i % 15) == 0:   # Divisible by 3 and 5 (so 15 here) outputs "FizzBuzz"
      print("FizzBuzz")
    elif (i % 3) == 0:  # Divisible by 3 outputs "Fizz"
      print("Fizz")
    elif (i % 5) == 0:  # Divisible by 5 outputs "Buzz"
      print("Buzz")
    else:               # If none above work then output the number itself.
      print(i)

# Python way of doing a main function.
# (Used mainly to prevent running the script if imported by something)
if __name__=="__main__":
  main()

# Also, python has no block comments.
# A little disappointing, but not a huge issue.
# ( Python is also a little too verbose for my tastes.
#   Hehe, Unreadable 1 liners go brrrrr :D )
