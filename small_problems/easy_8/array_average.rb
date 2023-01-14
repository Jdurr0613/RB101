# Write a method that takes one argument, an array containing integers, and returns the 
# average of all numbers in the array. The array will never be empty and the numbers will always 
# be positive integers. Your result should also be an integer.

def average(arr)
  arr.sum / arr.size
end

# Examples:

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# The tests above should print true.

# Further exploration

def further_average(arr)
  sum = arr.reduce { |sum, number| sum + number.to_f }
  sum / arr.size
end

puts further_average([1.4, 4.5])
puts further_average([234.65657, 223423.45, 78978.45645, 7556456.234])
