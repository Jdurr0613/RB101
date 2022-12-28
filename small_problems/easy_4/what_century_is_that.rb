# Write a method that takes a year as input and returns the century. The return value should be a 
# string that begins with the century number, and ends with st, nd, rd, or th as appropriate for 
# that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Problem
#   Rules
#     Explicit
#       Take a year as input
#       Return a century
#       Returned century should be a string that ends with proper ordinal suffix
#
#     Implicit
#       Centuries have no upper bound
#       Lower bound appears to be 1st century
# Examples:
#
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'
#
# Data Structures
#   integer as input
#   string as output
#
# Algorithm
#   Extract ordinal suffix to a method
#   Test for cases
#     If year <100, then century is 1st
#     If year ends with '00', then century = (year / 100).floor
#     If year does not end with '00', then century = (year / 100).floor + 1
# Code

def ordinal(num_string)
  if num_string[-1] == '1' && num_string[-2] != '1'
    num_string + 'st'
  elsif num_string[-1] == '2' && num_string[-2] != '1'
    num_string + 'nd'  
  elsif num_string[-1] == '3' && num_string[-2] != '1'
    num_string + 'rd'  
  else num_string + 'th'
  end
end

def century(year)
  if year < 100
    '1st'
  elsif year.to_s.end_with? '00'
    ordinal((year / 100).floor.to_s)
  else
    ordinal(((year / 100).floor + 1).to_s)
  end
end

#  Test Cases:
#
puts ordinal('20')
puts ordinal('21')
puts ordinal('22')
puts ordinal('23')
puts ordinal('1112')
puts ordinal('113')

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
puts century(20421301)

