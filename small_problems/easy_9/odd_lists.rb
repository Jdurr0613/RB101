# Write a method that returns an Array that contains every other element of an Array that is 
# passed in as an argument. The values in the returned list should be those values that 
# are in the 1st, 3rd, 5th, and so on elements of the argument Array.

def oddities(list)
  return_list = []
  list.each_with_index { |element, index| return_list << element if (index % 2).zero? }
  return_list
end

# Examples:

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

