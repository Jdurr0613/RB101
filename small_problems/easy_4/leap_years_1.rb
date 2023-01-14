# PROBLEM
# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly 
# divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 
# 100, then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that takes any year 
# greater than 0 as input, and returns true if the year is a leap year, or false if it is not a 
# leap year.
#
# Rules:
#   Explicit
#     Leap years are years divisible by 4
#     Year is not a leap year if the year is divisible by 100
#     Year is a leap year if the year is divisible by 400
#
#   Implicit
#     Take an integer as input
#     Return a boolean
#     year 1 appears to be the lower bound
#     there does not appear to be an upper bound 
#
# # EXAMPLES
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true

# DATA STRUCTURES
# Receive an integer as input
# Return a boolean as output

# ALGORITHM
# Create method to test for 3 conditions
#   - if year mod 100 is zero and year mod 400 is not zero, return false
#   - if year mod 4 is zero, return true
#   - if year mod 400 is zero, return true

# CODE
def leap_year?(year)
  if (year % 100).zero? && (year % 400 != 0)
    false
  elsif (year % 4).zero?
    true
  else
    false
  end
end

# TEST CASES
puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true

def further_leap_year?(year)
  if (year % 4).zero? && !(year % 100).zero?
    true
  elsif (year % 400).zero?
    true
  else
    false
  end
end
puts further_leap_year?(2016) == true
puts further_leap_year?(2015) == false
puts further_leap_year?(2100) == false
puts further_leap_year?(2400) == true
puts further_leap_year?(240000) == true
puts further_leap_year?(240001) == false
puts further_leap_year?(2000) == true
puts further_leap_year?(1900) == false
puts further_leap_year?(1752) == true
puts further_leap_year?(1700) == false
puts further_leap_year?(1) == false
puts further_leap_year?(100) == false
puts further_leap_year?(400) == true
