# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

statement_hash = Hash.new
letters = ('a'..'z').to_a + ('A'..'Z').to_a

letters.each do |letter|
  letter_count = statement.count(letter)
  statement_hash[letter] = letter_count if letter_count > 0
end

puts statement_hash
