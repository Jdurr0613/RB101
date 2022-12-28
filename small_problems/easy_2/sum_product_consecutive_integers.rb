# Write a program that asks the user to enter an integer greater than 0, then asks if the user 
# wants to determine the sum or product of all numbers between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.
#
#
# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

def valid_number?(num)
  /\d\.\d/.match(num) || /\d/.match(num)
end

def operation(num, operator)
  if operator == 's'
    return (1..num).inject { |sum, n| sum + n }
  elsif operator == 'p'
    return (1..num).inject { |product, n| product * n }
  end
end

input_integer = ''
puts '>> Please enter an integer greater than 0:'
loop do
  input_integer = gets.chomp!
  break if valid_number?(input_integer)
  puts '>> Please enter a valid integer'
end

sum_or_product = ''
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
correct_operation = 'sSpP'
loop do
  sum_or_product = gets.chomp!
  break if correct_operation.include?(sum_or_product)
  puts ">> Please enter a correct operation"
end

operator = sum_or_product.downcase == 's' ? 'sum' : 'product'

puts "The #{operator} of the integers between 1 and #{input_integer} is #{operation(input_integer.to_i, sum_or_product)}."
