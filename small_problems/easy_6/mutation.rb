# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# should print
# [Moe,
# Larry,
# Curly,
# Shemp,
# Harpo,
# Chico,
# Groucho,
# Zeppo]
#
# Array 2 is a different array object than array 1. The values are being added to array 2
# using the shovel operator, which is adding new objects with the same values rather than
# references to the initial objects.
