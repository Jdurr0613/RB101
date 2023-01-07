# PROBLEM
# 
# Build a program that displays when the user will retire and how many years she has to work 
# till retirement.
#
# Rules:
#   - receive an age from the user
#   - receive the age at which the user wishes to retire
#   - return the year of retirement and number of years until retirement
#   
# Example:
#
# What is your age? 30
# At what age would you like to retire? 70
#
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
#
# DATA STRUCTURE
#
# take an integer as input representing the users age
# take an integer as input representing the age at which the user wishes to retire
# return an integer representing the years until retirement
# return the current year and the year the user will retire
#
# ALGORITHM
# Prompt the user for their age
# receive the users age as an integer
# prompt the user for the year in which they will retire
# receive the year as an integer
#
puts "What is your age?"
current_age = gets.chomp!.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp!.to_i

t = Time.new

years_to_retire = retirement_age - current_age
puts "It's #{t.year}. you will retire in #{years_to_retire + t.year}"
puts "you only have #{years_to_retire} years to go!"
