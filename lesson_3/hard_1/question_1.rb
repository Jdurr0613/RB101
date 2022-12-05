# What do you expect to happen when the greeting variable is referenced in the 
# last line of the code below?

if false
  greeting = "hello world"
end

greeting

# greeting is not initialized with a value. Since there is no false condition
# greeting should not get assigned the value of "hello world", therefore there should
# be no return from running this code.