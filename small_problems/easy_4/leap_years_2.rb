# PROBLEM

# A continuation of the previous exercise.

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. 
# Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap 
# years occur in any year that is evenly divisible by 4.

# Using this information, update the method from the previous exercise to determine 
# leap years both before and after 1752.

# Rules:
#   Explicit:
#       - Prior to 1752:
#         - Leap year is any year divisible by 40
#       - After 1752:
#         - Leap year divisible by 4
#         - Leap year divisible by 400
#         - Leap year not divisible by 100
#   Implicit:
#       -Lower bound in test cases is year 1
#       -Upper bound is year 240001, but should assume that method works for 
#         any year > 1
#
# EXAMPLES
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == true
# leap_year?(1) == false
# leap_year?(100) == true
# leap_year?(400) == true

# DATA STRUCTURE
# Take an integer as input, return a boolean as output

# ALGORITHM
# Method 1 
#   return true if year mod 4 is 0
# Method 2
#   return true if year mod 4 is 0
#   return false if year mod 100 is 0
#   return true if year mod 400 is 0
#   return false for all other years
# Method 3
#   use method 1 if year is < 1752
#   use method 2 if year is > 1752

def julian_leap_year?(year)
  (year % 4).zero?
end

def gregorian_leap_year?(year)
  if (year % 100).zero? && (year % 400 != 0)
    false
  elsif (year % 4).zero?
    true
  else
    false
  end
end

def leap_year?(year)
  if year < 1752
    julian_leap_year?(year)
  else
    gregorian_leap_year?(year)
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true


