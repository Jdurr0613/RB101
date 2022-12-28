# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flinthash = Hash.new
# Turn this array into a hash where the names are the keys and the values are 
# the positions in the array.

flintstones.each_with_index do |item, index|
  flinthash[item] = index
end

puts flinthash
