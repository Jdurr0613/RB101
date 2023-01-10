# PROBLEM
# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use String#squeeze
# or String#squeeze!.

# Requirements
#   Explicit
#     -Take a string as input
#     -Return a string as output
#     -Input string will have letters duplicated
#     -Remove duplicate letters
#     -Do not use built in squeeze method
#   Implicit
#     -All consecutive characters should be collapsed
#     -Test cases do not show how the method should handle words with intended
#       duplicate characters (ie. moon, deer, etc). Fair to assume all
#       duplicate characters should be collapsed
#     -Single char should return single char
#     -Empty string should return empty string
#
# EXAMPLES

# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''
#
# DATA STRUCTURES
# Take a string as input
# Return a string as output
#
# ALGORITHM
# -Take a string as input
# -Split the string to an array, assigned to char_arr
# -For each char in char_arr
#   if char_arr[count] == char_arr[count + 1]
#   char_arr count = ''
# -Return the joined char_arr
#
# CODE

def crunch(text)
  char_arr = text.split('')
  count = 0
  loop do
    char_arr[count] = '' if char_arr[count] == char_arr[count + 1]
    count += 1
    break if count == char_arr.size
  end
  char_arr.join
end

# TEST CASES
puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
