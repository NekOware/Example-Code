
--[[
  A program that prints the first Pythagorean triple it finds.

  The Pythagorean triple formula is: a² + b² = c²
  This program should print the following: 3² + 4² = 5²
--]]

for c = 1, 10 do
  for a = 1, 10 do
    for b = 1, 10 do
      if (a^2) + (b^2) == (c^2) then
        print(string.format("Found a Pythagorean triple: %i² + %i² = %i²", a, b, c))
        return
      end
    end
  end
end
