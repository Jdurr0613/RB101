# Write a method that returns true if the string passed as an argument is a palindrome, false 
# otherwise. A palindrome reads the same forward and backward. For this exercise, case matters 
# as does punctuation and spaces.

def palindrome?(string)
  string.reverse == string
end
# Examples:

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

def palindrome_array?(arr)
  arr.reverse == arr
end

puts palindrome_array?([1, 2, 3, 2, 1])
puts palindrome_array?([2, 3, 4, 5, 6])
