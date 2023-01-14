# PROBLEM
# 
# Write a method that will take a short line of text, and print it within a box.
# Rules:
#   Explicit
#     - Take a string as input
#     - Return the string inside of a box
#   Implicit
#     - The first and last lines of the box should start and end with '+' and contain only '-'
#     - The second and fourth lines should start and end with '|' and only contain whitespace
#     - The third line should contain the string with '|' and whitespace added to the 
#       beginning and end
#
# EXAMPLE

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
#
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
# You may assume that the input will always fit in your terminal window.
# DATA STRUCTURE
#   Take a string as input, return 5 strings as output
#
# ALGORITHM
#   Take a string as input
#   create horizontal edge variable = '+-' + '-' * string length + '-+'
#   create vertical edge variable + '| ' + ' ' * string length + ' |'
#   create text line variable = '| ' + string + ' |'
#   print horizontal edge
#   print vertical edge
#   print test
#   print vertical edge
#   print horizontal edge
#
# CODE

def print_in_box(string)
  horizontal_edge = '+-' + '-' * string.length + '-+'
  vertical_edge = '| ' + ' ' * string.length + ' |'
  text_line = '| ' + string + ' |'

  puts horizontal_edge
  puts vertical_edge
  puts text_line
  puts vertical_edge
  puts horizontal_edge
end
# TEST CASES
print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
#
print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+Further Exploration
#
# PROBLEM
#
# Modify this method so it will truncate the message if it will be too wide to fit 
# inside a standard terminal window (80 columns, including the sides of the box). For 
# a real challenge, try word wrapping very long messages so they appear on multiple 
# lines, but still within a box.
#
# RULES
#   Explicit
#     - Each line of text must be shorter than 80 characters
#     - First and last as well as second and second to last lines should remain from 
#       the print in box method.
#     - Each line of text must start and end with '|' and be padded with whitespace to total
#       80 characters
#     Implicit
#     - Given text may be arbitrarily large
#
# DATA STRUCTURES
#  Take a string of text as input
#  Return text "in a box" as ouput
#
#  text_wrap method should take a string as input and return a string to be "boxed"
#
#  segment method should take an array of words as input and return an array of words
#
#  ALGORITHM
#
#  This problem will need several methods
#
#  segment
#  initialize an empty word array
#  set character counter to 0
#  take an array as input
#  remove elements from the input array and add them to the word array
#  stop if adding a word to the word array will cause it to exceed 76 total characters
#
#  text wrap
#  initialize an empty text array
#  take a string as input
#  split the string into an array
#  while the word array is not empty
#  call the segment method on the string array
#  add the '|' characters to the beginning and end of the output from the call to segment
#   as well as a newline character to the end
#  return the joined text array
#
#  bannerize
#  print the top border. we know that the banner length will be fixed at 80 chars
#  print the side border
#  print a call to text wrap
#  print the size border
#  print the bottom (same as top) border
#  
def text_wrap(text)
  wrapped_text = []
  text = text.split
  while text.size > 0
    line = segment(text).join
    wrapped_text << '| ' + line + ' ' * (76 - line.length) + " |\n"
  end
  wrapped_text.join
end

def segment(word_arr)
  char_count = 0
  text_arr = []
  while !(word_arr.empty?)
    next_word = word_arr[0]
    char_count += next_word.length + 1
    break if char_count > 76 
    word = word_arr.shift
    text_arr << "#{word} "
  end
  text_arr
end

def bannerize(text)
  horizontal_edge = '+-' + '-' * 76 + '-+'
  vertical_edge = '| ' + ' ' * 76 + ' |'

  puts horizontal_edge
  puts vertical_edge
  puts text_wrap(text)
  puts vertical_edge
  puts horizontal_edge
end
puts bannerize("Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window")

