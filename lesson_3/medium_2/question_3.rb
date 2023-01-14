# Let's call a method, and pass both a string and an array as arguments and see how even though they are treated the same way
# by ruby, the results can be different

# Study the following code and state what will be displayed and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# after calling tricky_method a_string_param is reassigned to "rutabaga" the 
# variable is local to the method, so the value of my_string remains unchanged
# after calling tricky_method my_array has "rutabaga" pushed to the end 

# The result after the method call is my_string = "pumpkins"
# and my_array = ["pumpkins", "rutabaga"]