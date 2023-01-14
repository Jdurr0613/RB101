# Problem
# Write a method that takes an Array of Integers between 0 and 19, and returns 
# an Array of those Integers sorted based on the English words for each number:
#
# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, 
# twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
# Requirements:
#   Explicit
#     -Take an array of integers as input
#     -Numbers in the array are between 0 and 19
#     -Numbers should be sorted alphabetically according to thier english 
#       spelling
#   Implicit
#     -There is nothing saying that a number cannot appear twice in the array
#
# EXAMPLES
#
# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]
#
# DATA STRUCTURE
#   -Take an array of integers as input
#   -Return a sorted array
#
# ALGORITHM
#   -Define a method that creates a hash mapping numbers to corresponding 
#    english words
#     -Initialize an array of numbers as english words in ascending numerical
#       order
#     -Initialize an empty hash
#     -Loop through the word array
#       -Add each element of the word array as a key in a hash, with its 
#         index as it's corresponding value.
#     -Return the hash of word/number pairs
#   -Define the sorting method
#     -Take an array of integers as input
#     -Initialize an empty hash, hash_to_sort
#     -Call each on the alpha_number_hash method
#       add the key/value pair to the empty hash if the value is in the input
#         array
#     -Initialize an empty array
#     -Sort hash_to_sort by the value of its keys
#     -Add each value of the sorted hash_to_sort to the empty return array
#     -Return the return array
#   
# CODE
def test_method()
  loop do

  end
end


def alpha_number_hash()
  num_words = ['zero', 'one', 'two', 'three', 'four', 'five', 'six',
               'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve',
               'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen',
               'eighteen', 'nineteen']
  alpha_num_hash = {}
  count = 0
  loop do
    alpha_num_hash[num_words[count]] = count
    count += 1
    break if count == num_words.size
  end
  alpha_num_hash
end

def alphabetic_number_sort(num_arr)
  hash_to_sort = {}
  alpha_number_hash.each_pair do |k,v|
    hash_to_sort[k] = v if num_arr.include?(v) 
  end
  hash_to_sort = hash_to_sort.sort
  result_arr = []
  hash_to_sort.each do |arr|
    result_arr << arr[1]
  end
  result_arr
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
