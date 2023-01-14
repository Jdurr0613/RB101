# PROBLEM
#
# Write a method that takes a String as an argument, and returns a new String 
# that contains the original value using a staggered capitalization scheme in 
# which every other character is capitalized, and the remaining characters are 
# lowercase. Characters that are not letters should not be changed, but count 
# as characters when switching between upper and lowercase.
# Requirements
#   Explicit
#     -Take a string as input
#     -Return a new string
#     -New string should have the same characters as the input string, but
#       with alternating uppercase and lowercase letters
#     -Non-alphabetic characters should remain unchanged
#
# Example:
#
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
#
# DATA STRUCTURES
# Take a string as input
# Return a new string as ouput
#
# ALGORITHM
# Take a string as input
# set a char_array variable to input string.downcase.chars
# for each element of the chars array
#   call the upcase! method if the characters index is even
# return char_arr.join
#
# CODE

def staggered_case(str,case_switch = 'upper')
  first_char_case = case_switch == 'upper' ? true : false
  char_arr = str.downcase.chars
  char_arr.each_with_index.map do |char, index|
    char.upcase! if index.even? == first_char_case
  end
  char_arr.join
end

# TEST CASES
#
puts staggered_case('I Love Launch School!','upper')# == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS','lower')# == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers')# == 'IgNoRe 77 ThE 444 NuMbErS'
