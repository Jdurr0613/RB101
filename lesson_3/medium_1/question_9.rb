# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

p bar(foo)

# bar is called passing foo as an argument
# foo has a default value of "no", but returns 'yes'
# therefore bar is called passing a value of 'yes'
# in the ternary condition param != 'no', so the second option of 'no' is returned
# thus the return of bar(foo) is 'no'