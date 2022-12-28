# Write a method that takes one argument, a string containing one or more words, and 
# returns the given string with words that contain five or more characters reversed. 
# Each string will consist of only letters and spaces. Spaces should be included only 
# when more than one word is present.

def reverse_words(phrase)
  reversed_phrase = []
  phrase.split do |word|
    if word.length < 5
      reversed_phrase << word
    else
      reversed_phrase << word.reverse
    end
  end
  reversed_phrase.join(' ')
end

# Examples:

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
