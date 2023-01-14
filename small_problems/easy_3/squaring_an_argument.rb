# Using the multiply method from the "Multiplying Two Numbers" problem, write a method 
# that computes the square of its argument (the square is the result of multiplying a number 
# by itself).
#
# Example:
#
def multiply(a, b)
  a * b
end

def square(num)
  multiply(num, num)
end

p square(-8) == 64
p square(5) == 25

def power(num, power_to)
  count = power_to
  total = 0
  loop do
    total += multiply(num, num) 
    count -= 1
    break if count == 1
  end
  total
end

counter = 1
loop do
  puts power(counter, 2)
  counter += 1
  break if counter == 12
end
puts power(12,2)
