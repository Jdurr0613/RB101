# PROBLEM
#
# Write a method that takes a non-empty string argument, and returns 
# the middle character or characters of the argument. If the argument 
# has an odd length, you should return exactly one character. If the 
# argument has an even length, you should return exactly two characters.
# 
# Rules:
#   Explicit
#     - Take a string as input
#     - Return the center character of odd length strings
#     - Return the center two characters of even length strings
#   Implicit
#     - Strings are at least one character
#     - Strings can be any length
#
# Examples:
#
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'
#
# DATA STRUCTURES
# Take a string as input, return a string as output
#
# ALGORITHM
# Take a string as input
# call the string length method 
# if string length is even
#   retun the character at string.length / 2 - 1 and string.length / 2 
# if string length is odd
#   return the character at string.length / 2
#
# CODE
#
def center_of(string)
  center = string.length / 2
  if string.length.even?
    string[center - 1, 2]
  else
    string[center]
  end
end

# TEST CASES
puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
