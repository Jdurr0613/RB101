# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# take returns n arguments from the enumerable it is called on. Executing the method
# call in irb or calling puts on the method call show the return

puts arr.take(2)
