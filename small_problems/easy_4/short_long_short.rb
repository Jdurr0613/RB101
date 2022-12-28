# Write a method that takes two strings as arguments, determines the longest of the two 
# strings, and then returns the result of concatenating the shorter string, the longer 
# string, and the shorter string once again. You may assume that the strings are of different 
# lengths.

def short_long_short(first_string, second_string)
  if first_string.length > second_string.length
    second_string + first_string + second_string
  else
    first_string + second_string + first_string
  end
end

# Examples:

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
