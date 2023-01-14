# Write code that changes the array below so that all of the names are shortened to 
# just the first three characters. Do not create a new array.

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.map { |word| word.slice(0..2) }
