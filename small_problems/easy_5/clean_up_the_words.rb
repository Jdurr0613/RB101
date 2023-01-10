# PROBLEM
#
# Given a string that consists of some words (all lowercased) and an assortment 
# of non-alphabetic characters, write a method that returns that string with 
# all of the non-alphabetic characters replaced by spaces. If one or more 
# non-alphabetic characters occur in a row, you should only have one space in 
# the result (the result should never have consecutive spaces).
# Requirements
#   Explicit
#     - Take a string as input
#     - replace non-alphabetic characters with spaces
#     - replace consecutive spaces
#   Implicit
#     - Shortest return string should be a single space
#     - input strings may have any length, but should be a single line
#
# EXAMPLES
#
# cleanup("---what's my +*& line?") == ' what s my line '
#
# DATA STRUCTURES
# Take a string as input
# return a string as ouput
#
# ALGORITHM
# Take a string as input
# replace non-alphabetic characters with spaces
# loop through remaining text
#   if the remaining text contains two or more consecutive spaces
#     substitute two consecutive spaces with one space
# return the resulting string
#
def cleanup(text)
  text.tr!('^A-Za-z', ' ')
  while text.include?('  ')
    text.gsub!('  ', ' ')
  end
  text
end

# TEST CASE
#
puts cleanup("---what's my +*& line?") == ' what s my line '
