# PROBLEM
#
# Write a method that takes an Array, and returns a new Array with the elements
# of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method
# you wrote in the previous exercise.
# Requirements
#   Explicit
#     -Take an array as input
#     -Return a new array
#     -Elements of new array should be same as old array, but in reverse order
#     -Input array and output array should not have the same object ID
#     -Do not use built in arr.reverse methods
#   Implicit
#     -Empty array given as input should return empty array
#     -Single element array given as input should return single element array
#
# EXAMPLES

# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]
#
# DATA STRUCTURES
# Take an array as input
# Return a new array as output
#
# ALGORITHM
# -Take an array as input
# -Initialize an empty array assigned to result array
# -Initialize a count varialbe to -1
# -Loop through the input array
#   shovel input_arr[count] to result array
#   decrement count
#   break when count.abs = input arr size + 1
# return the result array
#
# CODE
#
def reverse(arr)
  result_arr = []
  count = -1
  loop do
    result_arr << arr[count]
    count -= 1
    break if count.abs == (arr.size + 1) || arr == []
  end
  result_arr
end

# TEST CASES
puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]
