# PROBLEM
#
# Write a method that takes two Array arguments in which each Array contains 
# a list of numbers, and returns a new Array that contains the product of each 
# pair of numbers from the arguments that have the same index. You may assume 
# that the arguments contain the same number of elements.
# Requirements
#   Explicit
#     -Take two arrays as input
#     -Return a new array
#     -Each element of the new array should be the product of each element of 
#       the input arrays at the same index
#     -Assume that both input arrays are the same length

# EXAMPLE

# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
#
# DATA STRUCTURE
# Take two arrays as input
# Return one array
# 
# ALGORITHM
# Take two arrays as input
# Initialize a count variable
# Initialize an empty result array
# Initialize a loop
# shovel to result arr_one[count] * arr_two[count]
# increment count
# break the loop if count is equal to arr_one.size
# return result
#
# CODE

def multiply_list(arr_one, arr_two)
  result = []
  count = 0
  loop do
    result << arr_one[count] * arr_two[count]
    count += 1
    break if count == arr_one.length
  end
  result
end
#TODO look into map and inject
def multi_zip (arr_one, arr_two)
  arr_one.zip(arr_two) { |arr| puts arr }
end

# TEST CASE
puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
puts multi_zip([3, 5, 7], [9, 10, 11])# == [27, 50, 77]
