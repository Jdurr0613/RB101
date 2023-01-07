# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

def sum(num)
  total = 0
  num_arr = num.to_s.split('')
  num_arr.each { |num| total += num.to_i }
  total
end

# Examples:

puts sum(23) #== 5
puts sum(496)# == 19
puts sum(123_456_789)# == 45

# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).
