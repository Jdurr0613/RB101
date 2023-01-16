# PROBLEM
#
# Write a method that returns the next to last word in the String passed to it
# as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.
# Requirements
#   Explicit
#     -Take a string as input
#     -Return the second to last word in the string
#     -Assume that the string will always contain at least two words
#     -Words are any sequence of non-blank characters
#
# EXAMPLES

# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'
#
# DATA STRUCTURES
# Take a string as input
# Return a string as output
#
# ALGORITHM
# Take a string as input
# split the string into an array
# return string array [-2]
#
# CODE

def penultimate(str)
  str.split[-2]
end
# TEST CASES
puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'

# Suppose we need a method that retrieves the middle word of a phrase/sentence.
# What edge cases need to be considered? Write a method that returns the middle
# word of a phrase or sentence. It should handle all edge cases.
# Requirements
#   Explicit
#     -Take a string as input
#     -Return the middle word of the string
#     -words are sequences of non-blank characters
#   Implicit
#     -Strings may have as few as one word
#     -Strings may have an arbitrarily large length
#     -Strings may have an odd or even number of words
#       -handle even words by returning the middle two characters
#
# EXAMPLES
# middle_word('last word') == 'last word'
# middle_word('Launch School is great!') == 'School is'
# middle_word('Odd character string') == 'character'
#
# DATA STRUCTURES
# Take a string as input
# Return a string as output
#
# ALGORITHM
# Take a string str as input
# set word_arr to str.split
# If word_arr length is odd
# Return the element at word_arr[word_arr.length / 2 + 1]
# else return word_arr[word_arr.length / 2, 2]
#
# CODE

def middle_word(str)
  word_arr = str.split
  if word_arr.size.odd?
    word_arr[word_arr.size / 2]
  else
    word_arr[(word_arr.size / 2) -1 , 2].join(' ')
  end
end

# TEST CASES
puts middle_word('last word') == 'last word'
puts middle_word('Launch School is great!') == 'School is'
puts middle_word('Odd character string') == 'character'
