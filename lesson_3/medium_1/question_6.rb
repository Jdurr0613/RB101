# What is the output of the following code?

answer = 42 # binds the variable answer to the value 42

def mess_with_it(some_number) # on the method invokation answer is passed to the method
  some_number += 8 # some_number is passed the value of answer, then reassigned to answer + 8, which is the return value of the method call
end

new_answer = mess_with_it(answer) # new_answer is assigned to mess_with_it(answer), which is equal to 50

p answer - 8 # this will output the value of answer - 8, which is 34
# calling mess_with_it on answer never changes the value of answer.