# Write a method that takes two arguments, a string and a positive integer, and prints the 
# string as many times as the integer indicates.

def repeat(phrase, repeat_times)
  repeat_times.times { puts phrase }
end

repeat('Hello', 3)
repeat('longer test phrase', 10)
