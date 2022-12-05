# In other practice problems, we have looked at how the scope of variables 
# affects the modification of one "layer" when they are passed to another.

# To drive home the salient aspects of variable scope and modification 
# of one scope by another, consider the following similar sets of code.

# What will be printed by each of these code groups?

# A)
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

# the reassignment inside the scope of mess_with_vars will not affect the variables
# outside of the method scope.  

puts "one is: #{one}" # prints "one is: one"
puts "two is: #{two}" # prints "two is: two"
puts "three is: #{three}" #prints "three is: three"

# B)
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)
# the reassignment here is again inside of the scope of the method

puts "one is: #{one}" # prints "one is: one"
puts "two is: #{two}" # prints "two is: two"
puts "three is: #{three}" # prints "three is: three"

# C)
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)
# method call mutates the strings assigned to one, two, and three

puts "one is: #{one}" # prints "one is: two"
puts "two is: #{two}" # prints "two is: three"
puts "three is: #{three}" # prints "three is: one"