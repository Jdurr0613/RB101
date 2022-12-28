# Write a method that takes one argument, a positive integer, and returns a string of 
# alternating 1s and 0s, always starting with 1. The length of the string should match the 
# given integer.

def stringy(num)
  string_arr = []
  loop do
    if string_arr.size % 2 == 0
      string_arr << '1'
    else
      string_arr << '0'
    end
    break if string_arr.size == num
  end
  string_arr.join
end

# Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# The tests above should print true.
