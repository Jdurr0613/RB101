# Shorten the following sentence

advice = "Few things in life are as important as house training your pet dinosaur."

# Review the String#slice! documentation, and use that method to make the return value
# "Few things in life are as important as ". But leave the advice variable as
# "house training your pet dinosaur.".

p advice.slice!(0..38)
puts advice

# As a bonus, what happens if you use the String#slice method instead?

# without the exclamation mark on the method call to slice, the string will not 
# be mutated. Calling advice.slice(0..38) will return "Few things in life are as
# important as " but will leave the original string bound to advice

p advice.slice(0..38)
puts advice