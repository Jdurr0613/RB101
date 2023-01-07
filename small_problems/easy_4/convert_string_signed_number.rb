# PROBLEM
# In the previous exercise, you developed a method that converts simple 
# numeric strings to Integers. In this exercise, you're going to extend 
# that method to work with signed numbers.
#
# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. The String may have a leading + or - sign; if the 
# first character is a +, your method should return a positive number; if 
# it is a -, your method should return a negative number. If no sign is 
# given, you should return a positive number.
#
# You may assume the string will always contain a valid number.
#
# You may not use any of the standard conversion methods available in Ruby, 
# such as String#to_i, Integer(), etc. You may, however, use the 
# string_to_integer method from the previous lesson.
# 
# Rules:
#   Explicit
#     - Assume valid number
#     - No built in conversion methods
#     - Number may be signed
#   Implicit
#     - first char will be either '+', '-', or a number
#
# Examples
#
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100
# 
# DATA STRUCTURES
# Take a string as input
# Return an integer as output
#
# ALGORITHM
# character_to_digit method
#   construct hash mapping integer characters to respective integers
#   return integer matching character
#
# string_to_integer method
#   take an array of characters and reverse it
#   initilize a total set to zero
#   for each character in array
#     add to total the value of the character * 10**index of character
# 
# sign method (string)
#   initialize array to string.split('')
#   if char[0] == '-'
#     call shift on array
#     return string_to_integer * -1
#   if char[0] == '+'
#     call shift on array
#     return string_to_integer 
#   else
#     return string_to_integer
#
# CODE
#
def character_to_digit(character)
  digits = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
            '7' => 7, '8' => 8, '9' => 9}
  digits[character]
end

def string_to_integer(num_arr)
  num_char_arr = num_arr.reverse
  total = 0
  num_char_arr.each_with_index do |char, index|
    total += character_to_digit(char) * 10**index
  end
  total
end

def string_to_signed_integer(string)
  num_arr = string.split('')
  if num_arr[0] == '-'
    num_arr.shift
    string_to_integer(num_arr) * -1
  elsif num_arr[0] == '+'
    num_arr.shift
    string_to_integer(num_arr)
  else
    string_to_integer(num_arr)
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
 
