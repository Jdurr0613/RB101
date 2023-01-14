# PROBLEM
#
# Write a method that takes an Array as an argument, and returns two Arrays 
# (as a pair of nested Arrays) that contain the first half and second half of 
# the original Array, respectively. If the original array contains an odd 
# number of elements, the middle element should be placed in the first half 
# Array.
# Requirements
#   Explicit
#     Take an array as input
#     Return two nested arrays as output
#     first array in output should contain first half of input array
#     second array should contain second half of input array
#     first array should contain middle element if input array is odd
#   Implicit
#     empty array should result in two nested empty arrays
#     single element input should result in single element in first array
#       and empty second array.
# Examples:

# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# DATA STRUCTURES
# Take an array as input
# Return two nested arrays as output
#
# ALGORITHM
# Take an array as input
# initialize result_array = [[],[]]
# Take array.size / 2 elements from the array and add them to arr[0][1]
# shift remaining elements to arr[0][0]
#
# CODE
#
def halvsies(arr)
  arr.partition.with_index { |_, index| index < (arr.size / 2.to_f).ceil }
end
# TEST CASES
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]


