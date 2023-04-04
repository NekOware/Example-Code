
/*
  A Program that loops from 1 to 100 and prints the corresponding FizzBuzz
  value for each number.

  Divisible by 3: "Fizz"
  Divisible by 5: "Buzz"
  Divisible by 3 and 5: "FizzBuzz"
  Else, just print the current number.
*/

-- Create our temporary table for our FizzBuzz.
CREATE TABLE SQL_FizzBuzz (
  n INTEGER,
  s TEXT
);


-- Fill the table value 'n' with numbers from 1 to 100 and 's' with
-- an empty string.
WITH nums(n) AS (
    SELECT 1 UNION ALL
    SELECT n+1 FROM nums WHERE n<100
  )
  INSERT INTO SQL_FizzBuzz (n, s)
  SELECT n, '' FROM numbers;


-- Add "Fizz" to 's' if 'n' is divisible by 3.
UPDATE SQL_FizzBuzz
  SET s = s || 'Fizz' WHERE MOD(n, 3) = 0;

-- Add "Buzz" to 's' if 'n' is divisible by 5.
UPDATE SQL_FizzBuzz
  SET s = s || 'Buzz' WHERE MOD(n, 5) = 0;

-- If 's' is empty then make 'n' into a string and set it to 's'.
UPDATE SQL_FizzBuzz
  SET s = CAST(n AS TEXT) WHERE s = '';


-- Print all 's' strings from the fun table.
SELECT s FROM SQL_FizzBuzz;


-- Delete the table as it was temporary.
DROP TABLE SQL_FizzBuzz;

/*
  Q: Why SQL out of everything?
  A: As a famous man once said,
      "Science isn't about WHY. It's about WHY NOT."
      - Cave Johnson, 1958 - (Valve, 2011)
*/