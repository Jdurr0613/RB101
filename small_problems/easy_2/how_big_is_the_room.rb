# Build a program that asks a user for the length and width of a room in meters and then 
# displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).
SQUARE_METERS_TO_SQUARE_FEET = 10.7639

def valid_number?(num)
  /\d\.\d/.match(num) || /\d/.match(num)
end

def get_dimension(side)
  loop do
    side = gets.chomp!
    if valid_number?(side)
      break
    else
      puts "Enter a valid number"
    end
  end
  side
end


puts "what is the length of the room in meters (enter a number)?"
length = get_dimension(length)
puts "what is the width of the room in meters (enter a number)?"
width = get_dimension(width)
area_in_meters = length.to_f * width.to_f
puts "The area of the room in square meters is #{area_in_meters}"
puts "The area of the room in square centimeters is #{(area_in_meters * 100).round(2)}"
puts "The area of the room in square feet is #{(area_in_meters * SQUARE_METERS_TO_SQUARE_FEET).round(2)}"
puts "The area of the room in square inches is #{(area_in_meters * SQUARE_METERS_TO_SQUARE_FEET * 12).round(2)}"
