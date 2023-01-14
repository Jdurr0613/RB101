# PROBLEM
# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle in
# degrees, minutes and seconds. You should use a degree symbol (°) to represent
# degrees, a single quote (') to represent minutes, and a double quote (") to
# represent seconds. A degree has 60 minutes, while a minute has 60 seconds.
# 
# Requirements
#   Explicit
#     -Take a floating point number as input
#     -The floating point number represents an angle between 0 and 360 degrees
#     -Return a string formatted (degrees) DEGREE minutes'seconds"
#     -Given constant adds the formatted degree symbol
#     - 1 degree = 60 minutes, 1 minute = 60 seconds
#   Implicit
#     -Degrees are modulo 360
#     -Return string must have leading zeros for minutes and seconds
# EXAMPLES

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# NOTE: your results may differ slightly depending on how you round values, but
# should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the
# minutes and seconds, e.g., 321°03'07".

# You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"

# DATA STRUCTURES
# Take a floating point number as input
# Return a formatted string as output
#
# ALGORITHM
# Define method 
#   Receive floating point number as argument, angle
#   degrees = angle.divmod(1)[0]
#   minutes_raw = (num - degrees * 60)
#   minutes = (minutes_raw * 10).divmod(1)[0]
#   seconds = minutes_raw - minutes * 10 divmod(1)[0]
#   formatted_minutes = sprintf '%02d', minutes
#   formatted_seconds = sprintf '%02d', seconds
#   
#   Formt the output
#   #{degrees % 360}DEGREE#{formatted_minutes}'#{formatted_seconds}
#
# CODE

def dms(angle)
  degrees = angle.divmod(1)[0]
  minutes_raw = ((angle - degrees) * 60)
  minutes = minutes_raw.divmod(1)[0]
  seconds = ((minutes_raw - minutes) * 60).divmod(1)[0]
  formatted_minutes = sprintf '%02d', minutes
  formatted_seconds = sprintf '%02d', seconds
  puts "#{degrees % 360}#{DEGREE}#{formatted_minutes}'#{formatted_seconds}\""
end

# Test Cases
#
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
dms(-40)
