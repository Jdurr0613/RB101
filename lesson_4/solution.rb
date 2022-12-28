# The PEDAC Process

# # P: Understanding the Problem
# - Establish the rules/ define the boundary of the problem
#     -Assess available information
#     -Restate explicit requirements
#     - Identify implicit requirements
#     **Spend enough time here. do not rush this step**
# - Requirements can be explicit (stated in the program description) or implicit (derived from
#   test cases, etc)
#
# Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped into
# rows, with the first row containing ine integer, the second row two integers, the third row
# three integers, and so on. Given an integer representing the number of a particular row, return
# an integer representing the sum of all the integers in that row.
#
# - Sequence of integers
# - Sequence begins with two
# - Integers are consecutive
# - Sequence is grouped into rows
# - Each row is incrementally larger than the last: 1, 2, 3, ...
# - Row 'number' equals the number of elements in that row.
#   - row one has one element, row two has two elements, etc
# - Input is a single integer
#   - integer identifies a 'row', which is a subset of a sequence of integers
# - Output is a single integer
#   - the sum of the integers in the row identified by the input integer
#
# - SEQUENCE
#   2, 4, 6, 8, 10, ...
#
#   [2]
#   [4, 6]
#   [8, 10, 12]
#   [14, 16, 18, 20]
#   ...
# - How do we create the structure?
#
# # E: Examples and Test Cases
#
# - Can confirm/ refute assumptions
# - Help to answer questions about implicit requirements
# - Act as assertions which help codify the rules and boundaries of the problem
#
# # D: Data Structures
#
# - Help reason with data logically
# - Help interact with data at an implementation level
# - Thinking in terms of data structures is part of problem solving
# - Data structures closely linked to algorithm
#   - Set of steps from input to output
#     - Involves structuring data in a certain way
# # A: Algorithm
# - A logical sequence of steps for accomplishing a task or objective
#   - closely linked to data strcutures
#   - series of steps to structure data to produce the required outcome
# - Stay abstract/ high level
#   - avoid implementation detail
#   - don't worry about algorithm efficiency at this level
#
## -- ALGORITHM
# 1 Create an empty 'rows' array to contain the integers
# 2 Add the starting integer
# 3 Increment the starting integer by two to get the next integer in the sequence
# 4 Repete steps 2 and 3 until the array has reached the correct length
# 5 Return the row array
#
## -- Problem
# *Create a row*
# 
# Rules:
# - Row is an array
# - Arrays contain integer
# - Integers are consecutive even numbers
# - Integers in each row form part of an overall larger sequence
# - Rows are different lengths
# - Input: the information needed to create the output
#     - starting integer
#     - Length of the row
# - Output: the row itself: '[8, 10, 12]'
#
# Examples:
#
# start 2, length 1: --> [2]
# start 4, length 2: --> [4, 6]
# start 8, length 3: --> [8, 10, 12]



def sum_even_number_row(row_number)
  rows = []
  start_integer = 2
  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2
  end
  rows.last.sum
end

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer
  # steps 2 - 4
  # start the loop => add the start to the row => increment start_integer by 2 => break
  loop do
    row << current_integer
    current_integer += 2
    break if row.length == row_length
  end
  row
end

# -- TEST CASES

# row number 1: --> sum of integers in row: 2
# row number 2: --> sum of integers in row: 10
# row number 4: --> sum of integers in row: 68
#
p sum_even_number_row(1) == 2
p sum_even_number_row(2) == 10
p sum_even_number_row(4) == 68
# ** Data Structure **
#
# 2
# 4, 6
# 8, 10, 12
# 14, 16, 18, 20
# ...
#
# - Overall structure representing sequence as a whole
# - Individual rows within overall structure
# - Individual rows in a set order in context of sequence
# - Individual rows contain integers
# - Can assume that integers are in a set order in th econtext of the sequence
#
# - nested array seems like the likey choice:
# [
#  [2]
#  [4, 6]
#  [8, 10, 12]
#  [14, 16, 18, 20]
#  ...
# ]
#
# p create_row(2, 1) == [2]
# p create_row(4, 2) == [4, 6]
# p create_row(8, 3) == [8, 10, 12]
#
# Calculating the start integer:
# Rule: First integer of row == Last integer of preceding row + 2
# Algorithm
#  - get preceding row the rows array
#  - get last intger of that row
#  - add 2
#
# Final Thoughts
# - PEDAC is not a linear process
# - move back and forth between the steps
# - switch from implementation to problem solving when necessary
# - don't try to problem solve at the code level
