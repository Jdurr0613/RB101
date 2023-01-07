# Write a method that takes one argument, a positive integer, and returns a list of the 
# digits in the number.

def digits_list(num)
  num_arr = []
  num.to_s.split('').each { |char| num_arr << char.to_i }
  num_arr
end

p digits_list(124213)
p digits_list(0)
p digits_list(10)
p digits_list(87324682364)

puts digits_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digits_list(7) == [7]                     # => true
puts digits_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digits_list(444) == [4, 4, 4]             # => true
