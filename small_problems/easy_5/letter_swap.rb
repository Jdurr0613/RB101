# PROBLEM
# Given a string of words separated by spaces, write a method that takes this 
# string of words and returns a string in which the first and last letters of 
# every word are swapped.
#
# You may assume that every word contains at least one letter, and that the 
# string will always contain at least one word. You may also assume that each 
# string contains nothing but words and spaces/
# 
# Requirements
#   Explicit
#     -Take a string of words as input
#     -Return a string
#     -Each word in the return string should have first and last letters
#       swapped
#     -Input strings will only contain spaces and letters
#     -Input strings will always contain a minimum of one letter
#   Implicit
#     -String will be separated by spaces
# EXAMPLES
#
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'
#
# DATA STRUCTURES
# 
# Take a string as input
# Return a string as output
# Split string into an array
# Join string separated with whitespace
# 
# ALGORITHM
# 
# Take string as input
# initialize word_array set to input_string.split
# initialize char variable set to ''
# for each word in word_array
#   char = word[0]
#   word[0] = word[-1]
#   word[-1] = char

def swap(word_string)
  word_arr = word_string.split
  char = ''
  word_arr.each do |word|
    char = word[0]
    word[0] = word[-1]
    word[-1] = char
  end
  word_arr.join(' ')
end

# TEST CASES

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'

