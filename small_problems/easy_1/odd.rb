# Write a method that takes one integer argument, which may be positive, negative, or 
# zero. This method returns true if the number's absolute value is odd. You may assume 
# that the argument is a valid integer value.

def is_odd?(num)
  Math.sqrt(num**2) % 2 == 1 # pointlessly checking using the absolute value, num % 2 ==1 has same effect
end

puts is_odd?(0)
puts is_odd?(13)
puts is_odd?(-13)
puts is_odd?(12)
puts is_odd?(-12)

# Further exploration: same effect using Integer#remainder instead of %
def no_mod_is_odd?(num)
  Math.sqrt(num**2).remainder(2) == 1 # pointlessly checking using the absolute value, num % 2 ==1 has same effect
end

puts no_mod_is_odd?(0)
puts no_mod_is_odd?(13)
puts no_mod_is_odd?(-13)
puts no_mod_is_odd?(12)
puts no_mod_is_odd?(-12)

# without modulo or remainder

def further_is_odd?(num)
  num = Math.sqrt(num**2) 
  count = num
  loop do
    break if (num == 1) || (num == 0)
    num -= 2
    count =- 1
  end
  num == 1
end

puts further_is_odd?(0)
puts further_is_odd?(13)
puts further_is_odd?(-13)
puts further_is_odd?(12)
puts further_is_odd?(-12)
