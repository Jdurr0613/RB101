# PROBLEM
# Write a method that takes a number as an argument. If the argument is a 
# positive number, return the negative of that number. If the number is 0 or 
# negative, return the original number.
# 
# Rules
#   Explicit
#     - input number is a positive or negative integer
#     - if number <= 0, return number
#     - if number > 0, return number * -1
#   Implicit
#     - number will always be an integer
#     - number has no apparent upper or lower bound
#     
# EXAMPLES
#
# negative(5) == -5
# negative(-3) == -3
# negative(0) == 0      # There's no such thing as -0 in ruby

# DATA STRUCTURE
# Take an integer as input
# Return an integer as output
#
# ALGORITHM
# Take an integer as input
# Check if the integer is greater than 0
# If integer is greater than 0
#   return integer * -1
# else return integer

# CODE
def negative(num)
  num > 0 ? num * -1 : num
end
# TEST CASES
puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby

