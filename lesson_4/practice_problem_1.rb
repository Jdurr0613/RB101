# what is the return value of the select method below? Why?

[1, 2, 3].select do |num| 
  num > 5 
  "hi" 
end

# The return will be the array called on by the method. In this case [1, 2, 3]
