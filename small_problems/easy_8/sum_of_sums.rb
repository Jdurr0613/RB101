# PROBLEM
#
# Write a method that takes an Array of numbers and then returns the sum of the
# sums of each leading subsequence for that Array. You may assume that the
# Array always contains at least one number.
# Requirements
#   Explicit
#     -Take an array as input
#     -For each element of the array, sum the element with each previous
#       element
#     -Input array will always have at least one element
#
# Examples:

# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35
#
# DATA STRUCTURES
# Take an array as input
# Return an array as output
#
# ALGORITHM
# Take an array as input
# Initialize an integer sum variable
# For each element of the array
#   Increment sum by the sum of all elements up to the current element
# Return the sum variable
#
# CODE

def sum_of_sums(arr)
  sum = 0
  count = 0
  loop do
    sum += arr[0, count].sum
    count += 1
    break if count > arr.size
  end
  sum
end

# TEST CASES
#
puts sum_of_sums([3, 5, 2])# == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35
