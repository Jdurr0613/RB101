#PROBLEM
#
# Write a method that takes a positive integer, n, as an argument, and displays 
# a right triangle whose sides each have n stars. The hypotenuse of the 
# triangle (the diagonal side in the images below) should have one end at 
# the lower-left of the triangle, and the other end at the upper-right.
# Rules
#   Explicit:
#     - take an arbitrary integer n as input
#     - output n rows of text
#   Implicit:
#     - first row should have n - 1 spaces followed by 1 *
#     - last row should have n * characters
# EXAMPLES

# triangle(5)
#
#     *
#    **
#   ***
#  ****
# *****
#
# triangle(9)
#
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
#
# DATA STRUCTURES
#
# take an integer as input
# return n strings as output
#
# ALGORITHM
# initialize whitespace_count to n - 1
# initialize asterisk_count to 1
# while asterisk_count < n 
# print ' ' * whitespace_count + '*' * asterisk_count
# decrement whitespace_count
# increment asterisk_count
#  
# CODE
def triangle(n)
  whitespace_count = n - 1
  asterisk_count = 1
  while whitespace_count >= 0
    puts ' ' * whitespace_count + '*' * asterisk_count
    whitespace_count -= 1
    asterisk_count += 1
  end
end

# TEST CASES
# puts triangle(5)
# expect
#     *
#    **
#   ***
#  ****
# *****
#
# puts triangle(9)
# expect
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
#
def further_triangle(n, orientation)
  if orientation == 'bottom right'
    whitespace_count = n - 1
    asterisk_count = 1
    while whitespace_count >= 0
      puts ' ' * whitespace_count + '*' * asterisk_count
      whitespace_count -= 1
      asterisk_count += 1
    end
  elsif orientation == 'top left'
    whitespace_count = 0
    asterisk_count = n 
    while asterisk_count != 0
      puts '*' * asterisk_count + ' ' * whitespace_count 
      whitespace_count += 1
      asterisk_count -= 1
    end
  elsif orientation == 'bottom left'
    whitespace_count = n - 1
    asterisk_count = 1
    while whitespace_count >= 0
      puts '*' * asterisk_count + ' ' * whitespace_count 
      whitespace_count -= 1
      asterisk_count += 1
    end
  else # top left
    whitespace_count = 0
    asterisk_count = n 
    while asterisk_count != 0
      puts ' ' * whitespace_count + '*' * asterisk_count 
      whitespace_count += 1
      asterisk_count -= 1
    end
  end
end

further_triangle(10, 'bottom right')
