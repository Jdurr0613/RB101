# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.
# Requirements
#   Explicit
#     -take an array as input
#     -return the same array as output
#     -the elements of the array should be changed in place
#     -an empty or single element array should return the same array
#
# You may not use Array#reverse or Array#reverse!.

# Examples:

# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1] # true
# list == [4, 3, 2, 1] # true
# list.object_id == result.object_id # true

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"] # true
# list == ["c", "d", "e", "b", "a"] # true

# list = ['abc']
# reverse!(list) == ["abc"] # true
# list == ["abc"] # true

# list = []
# reverse!(list) == [] # true
# list == [] # true

# Note: for the test case list = ['abc'], we want to reverse the elements in
# the array. The array only has one element, a String, but we're not
# reversing the String itself, so the reverse! method call should
# return ['abc'].

# DATA STRUCTURES
# Take an array as input
# Return the same array with elements reversed
#
# ALGORITHM
# Take an array as input
# Initialize a place holder variable
# Initialize a left count variable to 0
# Initialize a right count variable to -1
# loop through the array
#   set place holder to arr[left_count]
#   set arr[left_count] to arr[right_count]
#   set arr[right_count] to place holder
#   increment left count
#   decrement right count
#   break if left count + absolute value of right count >= arr.size
# return input array
#   
# CODE
#
def reverse!(arr)
  if arr == []
    return arr
  else
    place_holder = ''
    left_count = 0
    right_count = -1
    loop do
      place_holder = arr[left_count]
      arr[left_count] = arr[right_count]
      arr[right_count] = place_holder
      left_count += 1
      right_count -= 1
      break if left_count + right_count.abs >= arr.size
    end
  end
    arr
end

# TEST CASES
list_1 = [1,2,3,4]
result = reverse!(list_1)
puts result == [4, 3, 2, 1] # true
puts list_1 == [4, 3, 2, 1] # true
puts list_1.object_id == result.object_id # true

list_2 = %w(a b e d c)
puts reverse!(list_2) == ["c", "d", "e", "b", "a"] # true
puts list_2 == ["c", "d", "e", "b", "a"] # true

list_3 = ['abc']
puts reverse!(list_3) == ["abc"] # true
puts list_3 == ["abc"] # true

list_4 = []
p reverse!(list_4) == [] # true
p list_4 == [] # true

