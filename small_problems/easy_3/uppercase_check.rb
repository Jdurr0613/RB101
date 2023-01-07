# PROBLEM
# Write a method that takes a string argument, and returns true if 
# all of the alphabetic characters inside the string are uppercase, false 
# otherwise. Characters that are not alphabetic should be ignored.
# 
# Rules
#   Explicit
#     - Take a string as an argument
#     - return should be true if all alphabetic characters are uppercase
#     - return false otherwise
#     - ignore non-alphabetic characters
#   Implicit
#     - empty string should return true
#     - strings may contain punctuation or numeric characters
#
# EXAMPLES
#
# DATA STRUCTURE
# Take a string as input
# Return a boolean as output\
#
# ALGORITHM
# Take a string as input
# check if input string is all uppercase
# return true if string is all uppercase
# else return false
#
# CODE

def uppercase?(string)
  string == string.upcase
end
# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true
#
# TEST CASES
#
puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true
