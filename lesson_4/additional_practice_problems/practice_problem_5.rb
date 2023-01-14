# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"


p flintstones.index { |word| word[0, 2] == 'Be' }
