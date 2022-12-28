# What happens when we modify an array while we are iterating over it? What would 
# be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# On the first iteration 1 is printed then one element is shifted off of the array. After
# the first iteration numbers = [2, 3, 4]. On the second iteration 3 is printed, then one
# element is shifted off the array. The numbers array is now [3, 4]. Since 
# there are only two elements of the array remaining and the iterator has ran twice, the
# block ends.

# The block prints 1 3 and returns [3, 4]

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# The first iteration prints 1 and pops 4. The second iteration prints 2 and pops 3. 
# The iterator exits since there are no more elements in the array.

# The block prints 1 2 and returns 
