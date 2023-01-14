# PROBLEM
#
# Write a method that takes a single String argument and returns a new string 
# that contains the original value of the argument with the first character of 
# every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.
# Requirements
#   Explicit
#     -Take a single string as an argument
#     -Return a new string
#     -The first letter of each word in the string should be capitalized
#     -All other characters in the string should be lowercase
#   Implicit
#     -Non-alphabetic characters should remain unchanged
#     -Non-alphabetic characters may be the first character of a word
#
# EXAMPLES

# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
#
# DATA STRUCTURES
# Take a string as input
# Return a new string as output
#
# ALGORITHM
# Take a string as an argument
# assign a word arr varialbe to the result of calling downcase and split on
#   the input string
# call each on  word arr
#   in the block of each, for each word
#     call upcase on word[0]
# return word arr join
#
# CODE

def word_cap(str)
  word_arr = str.downcase.split
  word_arr.each do |word|
    word.capitalize!
  end
  word_arr.join(' ')
end

def cap(str)
  str_arr = str.split('')
  str_arr[0].upcase!
  str_arr.join
end

def word_cap_alt(str)
  word_arr = str.downcase.split
  result_arr = []
  word_arr.each { |word| result_arr << cap(word) }
  result_arr.join(' ')
end

# TEST CASES
puts word_cap('four score and seven')# == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
puts word_cap_alt('four score and seven')
