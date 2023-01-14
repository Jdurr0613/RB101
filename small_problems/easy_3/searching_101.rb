# Write a program that solicits 6 numbers from the user, then prints a message that describes
# whether or not the 6th number appears amongst the first 5 numbers.
#
def valid_num_str?(num)
  /\d\.\d/.match(num) || /\d/.match(num)
end

def read_input
  input = gets.chomp!
  loop do
    break if valid_num_str?(input)

    puts '==> Enter a valid number'
  end
  input
end

def ordinal(num)
  if num.to_s.end_with?('1')
    num.to_s + 'st'
  elsif num.to_s.end_with?('2')
    num.to_s + 'nd'
  elsif num.to_s.end_with?('3')
    num.to_s + 'rd'
  else
    num.to_s + 'th'
  end
end

count = 1
five_array = []
while five_array.size < 5
  puts "==> Enter the #{ordinal(count)} number"
  five_array << read_input.to_i
  count += 1
end

puts '==> Enter the last number:'
last_num = read_input

if five_array.include?(last_num.to_i)
  puts "The number #{last_num} appears in #{five_array}."
else
  puts "The number #{last_num} does not appear in #{five_array}."
end
# Examples:
#
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].
#
#
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].
