# Starting with the string below, show two different ways to put the expected
# "Four score and" in front of it.

famous_words = "seven years ago"
gettys_one = "Four score and " << famous_words
gettys_two = "Four score and " + famous_words

puts gettys_one
puts gettys_two