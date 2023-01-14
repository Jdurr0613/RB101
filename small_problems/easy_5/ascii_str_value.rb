#PROBLEM
# Write a method that determines and returns the ASCII string value of a 
# string that is passed in as an argument. The ASCII string value is the 
# sum of the ASCII values of every character in the string. (You may use 
# String#ord to determine the ASCII value of a character.)
#
# Rules 
#   Explicit
#     Take a string as input
#     Sum the ASCII values of each character
#     Return the sum of all ASCII values
#   Implicit
#     Empty string should return 0
#
# EXAMPLES 
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0
#
# DATA STRUCTURES
# Take a string as input
# Return an integer
#
# ALGORITHM
# Take a string as input
# Initialize sum to zero
# For each character
#   - use String#ord to get the ASCII string value
#   - add the string value to sum
# return sum
#
# CODE

def ascii_value(input_string)
  sum = 0
  input_string.each_char { |char| sum += char.ord }
  sum
end
#TEST CASES
puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
