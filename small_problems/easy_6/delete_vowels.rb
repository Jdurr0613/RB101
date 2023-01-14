# PROBLEM
#
# Write a method that takes an array of strings, and returns an array of the 
# same string values, except with the vowels (a, e, i, o, u) removed.
#
# Requirements
#   Explicit
#     -Take an array of strings as input
#     -remove all occurrences of vowels
# 
# EXAMPLE

# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
#
# DATA STRUCTURES
# Take an array of strings as input
# Return an array of strings
#
# ALGORITHM
# Take an array of strings as input
# call the each method to iterate through the outer array
#   call gsub on each string to replace vowels with ''
# CODE

def remove_vowels(string_arr)
  string_arr.each do |string|
    string.gsub!(/[aeiouAEIOU]/,'')
  end
end
# TEST CASES
puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


