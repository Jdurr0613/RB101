# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# it is not possible to concatenate an integer onto a string. using string
# interpolation is one way to correct the error

puts "the value of 40 + 2 is #{40 + 2}"

# using explicit type conversion on the integer is another way to correct the error

puts "the value of 40 + 2 is " +  (40 + 2).to_s