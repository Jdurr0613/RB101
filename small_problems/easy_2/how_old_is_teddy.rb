# Build a program that randomly generates and prints Teddy's age. To get the age, you 
# should generate a random number between 20 and 200.

puts "Teddy is #{rand(20..200)} years old!"

# Example Output

# Teddy is 69 years old!

# Further Exploration

# Modify this program to ask for a name, and then print the age for that person. For an extra 
# challenge, use "Teddy" as the name if no name is entered.

puts "enter a name: "
name = gets.chomp!

def age(name = 'Teddy')
  puts "#{name} is #{rand(20..200)} years old!"
end

age(name)
age()
