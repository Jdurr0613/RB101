#What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# There is no argument inside of the do block that is meaningful for the reject method. This
# leaves the do block effectively iterating through the array passed to the reject method. 
# The end result is that the method call results in calling puts for each element in the array.
