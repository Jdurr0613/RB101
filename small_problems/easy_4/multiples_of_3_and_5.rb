# PROBLEM
#
# Write a method that searches for all multiples of 3 or 5 that lie between 1 and 
# some other number, and then computes the sum of those multiples. For instance, if 
# the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.
#
# Rules
#   Explicit
#     - Input integer n will be greater than 1
#     - Find all multiples of 3 or 5 between 1 and n
#     - Sum all multiples
#   Implicit
#     - Input integers may be arbitrarily large
#
# EXAMPLES
#
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168
#
# DATA STRUCTURES
# Take an integer as input
# Return an integer
#
# ALGORITHM
# Take integer n
# Initialize a variable for total and set to zero
#   iterate from 1 to n
#   if iterable is divisible by 3, add to sum
#   if iterable is divisible by 5, add to sum
# Return total
#
# CODE

def multisum(n)
  sum = 0
  (1..n).each { |num| sum += num if (num % 3).zero? || (num % 5).zero? }
  sum
end


# Test Cases
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168

def further_make_arr(n)
  nums = []
  (1..n).each { |num| nums << num if (num % 3).zero? || (num % 5).zero? }
  nums
end

def further_multisum(n)
  further_make_arr(n).inject(:+)
end

puts further_multisum(3) == 3
puts further_multisum(5) == 8
puts further_multisum(10) == 33
puts further_multisum(1000) == 234168


