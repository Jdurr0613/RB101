# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
# The program must compute the tip and then display both the tip and the total amount of the bill.

# Example:
#
# What is the bill? 200
# What is the tip percentage? 15
#
# The tip is $30.0
# The total is $230.0

def tip_calculator(tip)
  tip.to_f * 0.15
end

def valid_number?(num)
 /\d\.\d/.match(num) || /\d/.match(num)
end

puts "Welcome to the tip calculator"
puts "Enter the amount of your check"

check = 0
loop do
  check = gets.chomp!
  break if valid_number?(check)
  puts "Enter a valid dollar amount"
end

puts "The tip should be $" +  sprintf("%.2f", tip_calculator(check)).to_s
puts "The total amount due is $" + sprintf("%.2f", (tip_calculator(check) + check.to_f)).to_s
