# PROBLEM
# Write a method that takes a string with one or more space separated words
# and returns a hash that shows the number of words of different sizes.
#
# Words consist of any string of characters that do not include a space.
# Requirements
#   Explicit
#     -Take a string as input
#     -Return a hash contining number of words with each word count
#   Implicit
#     -empty string should return an empty hash
#
# EXAMPLES
#
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {} word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
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
#   add key to hash for word.length
#   add value to hash for count of word.length
# return the word count hash
#
# CODE

def word_sizes(text)
  word_count = Hash.new(0)
  words = text.split
  words.each do |word|
    word_count[word.size] += 1
  end
  word_count
end

# TEST CASES
puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}

