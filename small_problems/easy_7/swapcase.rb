#PROBLEM

# Write a method that takes a string as an argument and returns a new string in 
# which every uppercase letter is replaced by its lowercase version, and every 
# lowercase letter by its uppercase version. All other characters should be 
# unchanged.
# Requirements
#   Explicit
#     -take a string as an argument
#     -return a new string with capitalization reversed
#     -non-alphabetic characters should remain unchanged
#     -do not use built in swapcase method
#
# You may not use String#swapcase; write your own version of this method.

# EXAMPLES

# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
#
# DATA STRUCTURES
# Take a string as input
# Return a new string as output
#
# ALGORITHM
# Take a string as input
# initialize a result arr
# split the string into an array of characters
# iterate through the array of characters
# if the character == character.downcase!
#   append character.upcase! to result array
# else
#   return character.downcase to result array
# return result_arr.join
#
# CODE
# TODO: refactor using map
def swapcase(str)
  char_arr = str.chars
  result_arr = []
  count = 0
  loop do
    if char_arr[count].match(/[^a-zA-Z]/)
      result_arr << char_arr[count]
    else
      if char_arr[count] == char_arr[count].downcase
        result_arr << char_arr[count].upcase!
      else
        result_arr << char_arr[count].downcase!
      end
    end
    count += 1
    break if count == char_arr.size
  end
  result_arr.join
end

# TEST CASES
puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
