# PROBLEM
# Write a method that takes an Array of integers as input, multiplies all the
# numbers together, divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places. Assume the array is
# non-empty.
# Requirements:
#   Explicit
#     - Take an array as input
#     - Return a floating point average rounded to 3 decimal places
#     - Assume that the input array is non-empty
#     - Print the result formatted to 3 decimal places
# EXAMPLES

# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
#
# DATA STRUCTURE
# Take an array as input
# Return a floating point with 3 decimal places of accuracy
#
# ALGORITHM
# Take an array as input
# set result to arr.sum / arr.size.to_f
# print the result formatted to 3 decimal places of accuracy
#
# CODE

def show_multiplicative_average(arr)
  result = sprintf "%.3f", (arr.reduce(:*) / arr.size.to_f)
  puts "The result is #{result}"
end

# TEST CASES
#
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
