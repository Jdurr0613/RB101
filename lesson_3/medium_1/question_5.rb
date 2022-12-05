# Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. 
# A user passes in two numbers, and the calculator will keep computing the sequence 
# until some limit is reached.

# Ben coded up this implementation but complained that as soon as he ran it, he got an 
# error. Something about the limit variable. What's wrong with the code?

def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# as the method is written, the variable limit is outside of the method scope. Moving
# limit inside the method allowes it run without error. 

# as an aside, the method is calculating Fibonacci numbers. the first_num and 
# second_num variables therefore cannot be arbitrary. There are then two options
# for alleviating the issue of potentially having inputs that result in outputs
# that are not Fibonacci numbers. Either validate that first_num and second_num are
# Fibonacci numbers, or remove them as arguments.

def fib2(limit)
  first_num = 0
  second_num = 1
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

# this alteration to the function allows the limit to be given as input and returns
# the greatest Fibonacci number lower than the limit.