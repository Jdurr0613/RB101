# PROBLEM
#
# Write a method that takes two Array arguments in which each Array contains
# a list of numbers, and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of the two Arrays.
# The results should be sorted by increasing value.
# Requirements
#   Explicit
#     -Take two arrays a input
#     -Return a new array
#     -The new array should contain the product of each element of the first
#       array and each element of the second
#     -The result array should be returned sorted in ascending order
#   Implicit
#     -Input arrays may be different sizes
#
# You may assume that neither argument is an empty Array.

# EXAMPLE

# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
#
# DATA STRUCTURE
# Take two arrays a input
# Return a new array
#
# ALGORITHM
# Take two arrays as input
# Initialize a result array
# For each element of the first array
#   For each element of the second array
#     append to the result array the product of the first and second arrays
# Return the sorted results array
#
# CODE

def multiply_all_pairs(arr_one, arr_two)
  result_arr = []
  arr_one.each do |num|
    arr_two.each do |element|
      result_arr << num * element
    end
  end
  result_arr.sort!
end

# TEST CASE
puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

