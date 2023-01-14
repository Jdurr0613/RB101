# PROBLEM
#
# Write a method that takes two Arrays as arguments, and returns an Array that 
# contains all of the values from the argument Arrays. There should be no 
# duplication of values in the returned Array, even if there are duplicates in 
# the original Arrays.
# REQUIREMENTS
#   Explicit
#     -Take two arrays as input
#     -Return a new array
#     -The return array should have all of the elements of both arrays, but no
#       duplicate elements
#   Implicit
#     -Input arrays may contain duplicates
# EXAMPLE

# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# DATA STRUCTURES
# Take two arrays as input
# Return one array as output
#
# ALGORITHM
# - Take two arrays as input
# - return (arr_one + arr_two).uniq
#
# CODE
#
def merge(arr_one, arr_two)
  (arr_one + arr_two).uniq
end

# TEST CASE
puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
