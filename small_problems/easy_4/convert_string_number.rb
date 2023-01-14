# PROBLEM
#
# The String#to_i method converts a string of numeric characters (including an 
# optional plus or minus sign) to an Integer. String#to_i and the Integer 
# constructor (Integer()) behave similarly. In this exercise, you will create a 
# method that does the same thing.
#
# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. You may not use any of the methods mentioned above.
#
# For now, do not worry about leading + or - signs, nor should you worry 
# about invalid characters; assume all characters will be numeric.
#
# You may not use any of the standard conversion methods available in Ruby to 
# convert a string to a number, such as String#to_i, Integer(), etc. Your method 
# should do this the old-fashioned way and calculate the result by analyzing the 
# characters in the string.
#
# Rules:
#   Explicit
#     - Take a string of numbers
#     - Convert string to integer
#     - Do not use any built in conversion methods
#     - Assume all characters are valid numbers
#     - Ignore signed numbers
#   Impicit
#     - Assume 0 is the smallest number
#     - Assume numbers of any size
#
# Examples
#
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570
#
# DATA STRUCTURES
# Take a string as input
# Return an integer as output
#
# ALGORITHM
# Method for character to digit conversion
# take a character as input
# Define hash table mapping characters '0' to '9' with digits 0 to 9
# Return integer value for given character key
#
# Method for converting whole string
# Take a string as input
# Reverse the string
# Initialize a total
# Split string to array
# For each element of array
#   add to the total the value of calling character to digit * 10 to the index power
# return total
#
# CODE

def character_to_digit(character)
  digits = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
            '7' => 7, '8' => 8, '9' => 9}
  digits[character]
end

def string_to_integer(num_string)
  num_char_arr = num_string.reverse.split('')
  total = 0
  num_char_arr.each_with_index do |char, index|
    total += character_to_digit(char) * 10**index
  end
  total
end

# TEST CASES
puts string_to_integer('4321')# == 4321
puts string_to_integer('570')# == 570

p character_to_digit('0')

def hexchar_to_digit(character)
  digits = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
            '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13,
            'E' => 14, 'F' => 15}
  digits[character]
end

def hexadecimal_to_int(num_string)
  num_char_arr = num_string.reverse.split('')
  total = 0
  num_char_arr.each_with_index do |char, index|
    total += hexchar_to_digit(char.upcase) * 16**index
  end
  total
end

puts hexadecimal_to_int('4D9f')

