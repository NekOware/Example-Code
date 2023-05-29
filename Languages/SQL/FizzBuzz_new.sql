-- NOTE: I've used SQLite 3.39.4 while making this.

/*
  A Program that loops from 1 to 100 and prints the corresponding FizzBuzz
  value for each number.

  Divisible by 3: "Fizz"
  Divisible by 5: "Buzz"
  Divisible by 3 and 5: "FizzBuzz"
  Else, just print the current number.
*/

-- Create a temporary table for our FizzBuzz.
CREATE TABLE SQL_FizzBuzz (
  n INTEGER,
  s TEXT
);

/* Fill the table value 'n' with numbers from 1 to 100 and 's' with
   an empty string.                                                      */
INSERT INTO SQL_FizzBuzz (n, s)
  SELECT n, '' FROM (
    WITH RECURSIVE nums(n) AS (
      VALUES(1)
      UNION ALL
      SELECT n + 1 FROM nums WHERE n < 100 /* 
        The number at the end there is the number of iterations to do. */
    )
    SELECT n FROM nums
  );

-- Evaluate each entry in the table using the FizzBuzz game's rules.
UPDATE SQL_FizzBuzz
  -- Set 's' value to the first successful test.
  SET s = CASE
    WHEN n%15= 0 THEN 'FizzBuzz' /* If divisible by 3 and 5 (same as 15) */
    WHEN n%3 = 0 THEN 'Fizz'     /* If divisible by 3 */
    WHEN n%5 = 0 THEN 'Buzz'     /* If divisible by 5 */
    ELSE CAST(n AS TEXT)         /* If NOT divisible by 3 or 5 */
  END;

-- Select all 's' strings from the fun table.
-- (I'm running this in a terminal so it acts like print for me.)
SELECT s FROM SQL_FizzBuzz;

-- Delete the table as it was temporary.
DROP TABLE SQL_FizzBuzz;

/*
  "Are you okay? Are you - Don't answer that. I'm absolutely sure you're fine."
    - Wheatley, 999999999... - (Valve, 2011)
*/
