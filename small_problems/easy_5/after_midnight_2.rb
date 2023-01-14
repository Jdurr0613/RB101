# PROBLEM
#
# As seen in the previous exercise, the time of day can be represented 
# as the number of minutes before or after midnight. If the number of 
# minutes is positive, the time is after midnight. If the number of 
# minutes is negative, the time is before midnight.
#
# Write two methods that each take a time of day in 24 hour format, and 
# return the number of minutes before and after midnight, respectively. 
# Both methods should return a value in the range 0..1439.
# 
# Requirements
#  Explicit
#   - Given a string, formatted hh:mm
#   - Two methods
#   - after_midnight should return an integer showing the number of minutes
#     after  midnight
#   - before midnight should return an integer showing the number of minutes before 
#     midnight
#  Implicit
#   - 00:00 == 24:00
#
# You may not use ruby's Date and Time methods.
#
# EXAMPLES
#
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0
#
# DATA STRUCTURES
# For both methods:
# Take a string as input
# Return an integer as output
#
# ALGORITHM
# method time_in_minutes
# Take a string as input
# initialize a constant DAY_IN_MINUTES to 1440
# initialize a variable 'hours' set to input_string[1:2]
# initialize a variable 'minutes' set to input_string[4:2]
# return 'hours' * 60 + minutes % DAY_IN_MINUTES
#
# after_midnight
# take an integer as input
# return time_in_minutes
#
# before_midnight
# take an integer as input
# return 0 - time_in_minutes
# 
# CODE
DAY_IN_MINUTES = 1440

def time_in_minutes(time_string)
  hours = (time_string[0].to_i * 10) + time_string[1].to_i
  minutes = (time_string[3].to_i * 10) + time_string[4].to_i
  ((hours * 60) + minutes) % DAY_IN_MINUTES
end

def after_midnight(time_string)
  time_in_minutes(time_string)
end

def before_midnight(time_string)
  (DAY_IN_MINUTES - time_in_minutes(time_string)) % DAY_IN_MINUTES
end

# TEST CASES

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0


