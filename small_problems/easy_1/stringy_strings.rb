# Write a method that takes one argument, a positive integer, and returns a string of 
# alternating 1s and 0s, always starting with 1. The length of the string should match the 
# given integer.

def stringy(num)
  string = ''
  (1..num).each { |number| number.even? ? string << '0' : string << '1' }
  string
end

# Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
# The tests above should print true.

def second_stringy(num, switch = 1)
  string = ''
  if switch.zero?
    (1..num).each { |number| number.even? ? string << '1' : string << '0' }
  else
    (1..num).each { |number| number.even? ? string << '0' : string << '1' }
  end
  string
end

puts second_stringy(6) == '101010'
puts second_stringy(9) == '101010101'
puts second_stringy(4, 0) == '0101'
puts second_stringy(7, 0) == '0101010'
