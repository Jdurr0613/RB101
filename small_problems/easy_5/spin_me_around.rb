# PROBLEM
# You are given a method named spin_me that takes a string as an argument and
# returns a string that contains the same words, but with each word's
# characters reversed. Given the method's implementation, will the returned
# string be the same object as the one passed in as an argument or a different
# object?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

# spin_me("hello world") # "olleh dlrow"
# The resulting word should be different, since it is the result of joining
# an array. Check with the .object_id method

str = 'This is a test string'
puts str.object_id
spun_str = spin_me(str)
puts spun_str.object_id
