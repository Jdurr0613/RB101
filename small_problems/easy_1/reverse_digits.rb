# PROBLEM
# Write a method that takes a positive integer as an argument and 
# returns that number with its digits reversed. Examples:
# 
# Rules
#   Explicit
#     - take a positive integer
#     - return an integer
#     - ignore leading/trailing zeroes
#
# EXAMPLES
# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1
#
# Don't worry about arguments with leading zeros - Ruby sees those as 
# octal numbers, which will cause confusing results. For similar 
# reasons, the return value for our fourth example doesn't have any leading zeros.
# 
# DATA STRUCTURES
# Take an integer as input
# convert to string for reverse method
# return as integer
#
# ALGORITHM
# Take an integer as input
# convert the integer to a string
# call string reverse method
# convert reversed string to integer
# return integer
#
# CODE

def reversed_number(number)
  number.to_s.reverse.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1

