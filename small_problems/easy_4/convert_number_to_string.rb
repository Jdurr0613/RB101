# PROBLEM
# In the previous two exercises, you developed methods that convert simple 
# numeric strings to signed Integers. In this exercise and the next, you're 
# going to reverse those methods.
#
# Write a method that takes a positive integer or zero, and converts it to 
# a string representation.
#
# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc. Your method should do 
# this the old-fashioned way and construct the string by analyzing and 
# manipulating the number.
# 
# Rules:
#   Explicit
#     - no built in conversion methods
#   Implicit
#     - assume positive integers
#
# EXAMPLES
#
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'
# 
# DATA STRUCTURES
# Take an int as input
# Return a string
#
# ALGORITHM
# set size variable to number.digits.size - 1
# initialize a 10 element array of characters '0' through '9'
# initialize an empty return string
# while size > 0
#   value = input number / 10**size
#   return string << char_array[value]
#   size -= 1
#
# CODE

def integer_to_string(num)
  char_arr = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
  size = num.digits.size - 1
  num_string = ''
  while size != -1
    value = num / 10**size
    num_string << char_arr[value]
    num = num % 10**size
    size -= 1
  end
  num_string
end

# TEST CASES

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
