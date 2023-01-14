# PROBLEM
#
# Given an unordered array and the information that exactly one value in the 
# array occurs twice (every other value occurs exactly once), how would you 
# determine which value occurs twice? Write a method that will find and return 
# the duplicate value that is known to be in the array.
# Requirements
#   Explicit
#     -Take an array as input
#     -Return the single element of the array that occurs more than once
#     -Exactly one element has a duplicate
#   Implicit
#     -Test cases only account for arrays of integers
# Examples:

# find_dup([1, 5, 3, 1]) == 1
# find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
#
# DATA STRUCTURES
# Take an array as input
# Return an integer as output
#
# ALGORITHM
# Take an array as input
# Create a comparison array by calling uniq on the input array
# Iterate through both arrays
# if arr[index] is equal to comparison_arr[index]
#   move on to the next index
# else
#   return arr[index]
#   break
#
# CODE
#
def find_dup(arr)
  comparison_arr = arr.uniq
  count = 0
  while count < arr.size
    if arr[count] == comparison_arr[count]
      count += 1
    else
      return arr[count]
      break
    end
  end
end

# TEST CASES
#
puts find_dup([1, 5, 3, 1]) == 1
puts find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
