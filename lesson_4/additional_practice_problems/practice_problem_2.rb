# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, 
         "Lily" => 30, 
         "Grandpa" => 5843, 
         "Eddie" => 10, 
         "Marilyn" => 22, 
         "Spot" => 237 }
ages_total = 0
ages.each_value { |value| ages_total += value }

puts ages_total
