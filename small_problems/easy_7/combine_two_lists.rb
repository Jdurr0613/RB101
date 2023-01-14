# PROBLEM
#
# Write a method that combines two Arrays passed in as arguments, and returns
# a new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.
# Requirements
#   Explicit
#     - take 2 arrays as input
#     - return a new array with elements from both arrays
#     - new array should be [arr1[0], arr2[0], arr1[1], arr2[1]...
#     - assume both arrays are non-empty and of equal size
#   Implicit
#     - array elements may be integers or string characters
#
# EXAMPLE

# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
#
# DATA STRUCURES
# Take two arrays as input
# return one array as output
#
# ALGORITHM
# take two arrays as input
# call the zip method on the first array with the second array passed as an 
#   argument
# call the flatten array on the result
# return the return value of flatten
#
# CODE

def interleave(arr_one, arr_two)
  arr_one.zip(arr_two).flatten
end

# TEST CASE
puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
