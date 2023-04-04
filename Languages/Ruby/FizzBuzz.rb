
LOOPS = 100

=begin
  A Program that loops from 1 to the number in the above "LOOPS" variable
  and prints the corresponding FizzBuzz value for each number.

  Divisible by 3: "Fizz"
  Divisible by 5: "Buzz"
  Divisible by 3 and 5: "FizzBuzz"
  Else, just print the current number.
=end

for i in 1..LOOPS
  if (i % 15) == 0    # Divisible by 3 and 5 (so 15 here) outputs "FizzBuzz"
    puts "FizzBuzz"
  elsif (i % 3) == 0  # Divisible by 3 outputs "Fizz"
    puts "Fizz"
  elsif (i % 5) == 0  # Divisible by 5 outputs "Buzz"
    puts "Buzz"
  else                # If none above work then output the number itself.
    puts i
  end
end
