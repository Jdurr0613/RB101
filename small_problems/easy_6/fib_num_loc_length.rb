# PROBLEM
# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition, and each subsequent number
# is the sum of the two previous numbers. This series appears throughout the
# natural world.

# Computationally, the Fibonacci series is a very simple series, but the
# results grow at an incredibly rapid rate. For example, the 100th Fibonacci
# number is 354,224,848,179,261,915,075 -- that's enormous, especially
# considering that it takes 6 iterations before it generates the first 2
# digit number.

# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument.
# (The first Fibonacci number has index 1.)
# Requirements
#   Explicit
#    Take an integer as input representing a number of digits
#    Return an integer representing the index of the first fibonacci number 
#     with that many digits
#    Assume that the argument is always greater than 2
#   Implicit
#     write a method that calculats fibonacci numbers
# Examples:

# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# You may assume that the argument is always greater than or equal to 2.
#
# DATA STUCTURES
# Take an integer as input
# Return an integer as output
#
# ALGORITHM
# Define a method for calculating fibonacci numbers
#   take an integer
#   if integer == 1 or 2 return the integer
#   else return fib (n - 1) + fib(n - 2)
#     num_2 += num_1
#
# Define the find_fibonacci_index_by_length method
# Take an integer as input
# initialize a count variable to 1
# initialize a loop
# while fib(count) < 10**input_integer
#   count +=1
# return count
#
def fib(n)
  if n == 1 || n == 2
    1
  else
    fib(n - 1) + fib(n - 2)
  end
end

def find_fibonacci_index_by_length(size)
  count = 1
  while fib(count) < 10**(size - 1)
    count +=1
  end
  count
end

# TEST CASES
puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847


