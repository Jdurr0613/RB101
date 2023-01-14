# PROBLEM
#
# Modify the word_sizes method from the previous exercise to exclude non-letters 
# when determining word size. For instance, the length of "it's" is 3, not 4. 
# Write a method that takes a string with one or more space separated words
#
# Requirements
#   Explicit
#     -Take a string as input
#     -Return a hash contining number of words with each word count
#     -Non-letters should not be counted
#   Implicit
#     -empty string should return an empty hash
#
# EXAMPLES
#
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}
#
# DATA STRUCTURES
# Take a string as input
# Return a hash as output
#
# ALGORITHM
# Take a string as input
# initialize an empty hash
# split input text into an array of words set to word array variable
# for each word in word array
#   substitue non-letters with ''
# for each word in word array
#   add key to hash for word.length
#   add value to hash for count of word.length
# return the word count hash
#
# CODE
def word_strip(text)
  word_arr = text.split
  word_arr.each do |word|
    word.gsub!(/[^a-zA-Z]/, '')
  end
  word_arr.join(' ')
end

def word_sizes(text)
  word_count = Hash.new(0)
  words = word_strip(text).split
  words.each do |word|
    word_count[word.size] += 1
  end
  word_count
end

# TEST CASES
puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}

