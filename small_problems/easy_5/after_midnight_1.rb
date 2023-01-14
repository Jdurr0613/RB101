# PROBLEM
# The time of day can be represented as the number of minutes before or after 
# midnight. If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.
# 
# Rules
#     Time will be given in minutes before or after midnight
#     Negative integers are minutes before midnight
#     Positive integers are minutes after midnight
#   Implicit
#     Time int / 60 determines the hours
#     Time int % 60 determines minutes
#
# Write a method that takes a time using this minute-based format and returns the 
# time of day in 24 hour format (hh:mm). Your method should work with any integer input.
#
# You may not use ruby's Date and Time classes.
#
# EXAMPLES
#
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"
#
# Disregard Daylight Savings and Standard Time and other complications.
#
# DATA STRUCTURES
# Take an integer as input
# Return a string, formatted hh:mm
# 
# ALGORITHM
#   take an integer 'time' as an argument
#   assing a variable 'value' to be 'positive' if time is positive or 'negative' if 
#     time is negative.
#   set time to time.abs
#   create a variable 'hours' and set it equal to (time / 60) % 24
#   create a variable minutes set to time % 60
#   if value is positive
#     return "#{hours}:#{minutes}"
#   else 
#     return "#{24 - hours}:#{60 - minutes}"
#
# CODE

def time_of_day(time)
  hours = (time / 60) % 24
  minutes = time % 60
  format("%02d:%02d", hours, minutes)
end

def time_of_day_two(time)
  Time.new(0,0) + time
end
# TEST CASES

puts time_of_day(0)# == "00:00"
puts time_of_day(-3)# == "23:57"
puts time_of_day(35)# == "00:35"
puts time_of_day(-1437)# == "00:03"
puts time_of_day(3000)# == "02:00"
puts time_of_day(800)# == "13:20"
puts time_of_day(-4231)# == "01:29"

puts time_of_day_two(0)# == "00:00"
puts time_of_day_two(-3)# == "23:57"
puts time_of_day_two(35)# == "00:35"
puts time_of_day_two(-1437)# == "00:03"
puts time_of_day_two(3000)# == "02:00"
puts time_of_day_two(800)# == "13:20"
puts time_of_day_two(-4231)# == "01:29"

