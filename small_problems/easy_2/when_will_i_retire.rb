
# Build a program that displays when the user will retire and how many years she has to work 
# till retirement.
#
# Example:
#
# What is your age? 30
# At what age would you like to retire? 70
#
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

puts "What is your age?"
current_age = gets.chomp!.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp!.to_i
years_to_retire = retirement_age - current_age
puts "It's 2022. you will retire in #{years_to_retire + 2022}"
puts "you only have #{years_to_retire} years to go!"
