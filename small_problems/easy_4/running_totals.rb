# PROBLEM
#
# Write a method that takes an Array of numbers, and returns an Array with the same number
# of elements, and each element has the running total from the original Array.

# A running total is the sum of all values in a list up to an including the current element.
# Thus, the running total when looking at index 2 of the array
# [14, 11, 7, 15, 20] is 32 (14 + 11 + 7), while the running total at index 3 is 47 (14 + 11 + 7 + 15).
#
# Rules
#   Explicit:
#     - Take an array as input
#     - Return an array as output
#     - Each element of the return array should have the running total of the input array
#     - The element at index n in the return array should be the sum of the elements from the
#       input array at index [n] + [n - 1] + ... + [0]
#   Implicit:
#     - Algorithm should be able to handle an empty array
#     - Output array must have the same number of elements, but does not need to be the same array
#
# EXAMPLES
#
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# DATA STRUCTURES
#   - Take an array as input
#   - Return a new array as output
#
# ALGORITHM
#   - Initialize the empty return array
#   - For each element of the input array:
#     - Take the sum of the element and all preceeding elements
#     - Append the sum to the return array
#   - To Take the sum of the element
#     - Initialize a total variable
#     - add to the total the value of the element and each element preceeding it
#   - Return the return array
#
# CODE
def sum_elements(sub_array)
  sub_array.inject(:+)
end

def running_total(input_array)
  output_array = []
  count = 1
  if input_array == []
    output_array
  else
    loop do
      output_array << sum_elements(input_array[0, count])
      break if count == input_array.size

      count += 1
    end
  end
  output_array
end

# TEST CASES
puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

p running_total([2, 5, 13])# == [2, 7, 20]
p running_total([14, 11, 7, 15, 20])# == [14, 25, 32, 47, 67]
p running_total([3])# == [3]
p running_total([]) #== []
