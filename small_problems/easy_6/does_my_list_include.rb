# PROBLEM
#
# Write a method named include? that takes an Array and a search value as 
# arguments. This method should return true if the search value is in the 
# array, false if it is not. You may not use the Array#include? method in 
# your solution.
# Requirements
#   Explicit
#     -take an array and a search value as input
#     -return true if the array contains the search value, or false otherwise
#     -do not use the built in include method
#   Implicit
#     -test cases show examples with integers or empty arrays
#     -test cases show search values that are integers or nil
#
# EXAMPLES
#
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false
#
# DATA STRUCTURES
# Take an array and a single search value as input
# Return a boolean
# set response variable to false
# iterate through array
#   if element in array == input value
#   response = true
# return response
# 
# ALGORITHM
# Take an array and a single search value as input
#
# CODE

def include?(arr, value)
  response = false
  for element in arr
    if element == value
      response = true
    end
  end
  response
end

# TEST CASES
# 
puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
