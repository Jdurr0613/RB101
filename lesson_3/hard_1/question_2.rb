# What is the result of the last line in the code below?

greetings = { a: 'hi' } # greetings is bound to the hash
informal_greeting = greetings[:a] # informal greeting is bound to 'hi'
informal_greeting << ' there' # ' there' is appended to the end of informal_greeting
# which is bound to the value of :a in the hash
puts informal_greeting  #  => "hi there"
puts greetings # => {a: 'hi'}