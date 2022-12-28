# The || operator returns a truthy value if either or both of its operands are truthy. If 
# both operands are falsey, it returns a falsey value. The && operator returns a truthy value 
# if both of its operands are truthy, and a falsey value if either operand is falsey. This 
# works great until you need only one of two conditions to be truthy, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise. Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

def xor?(condition_one, condition_two)
  true if (condition_one || condition_two) && (!(condition_one) || !(condition_two))
end

# Examples:

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false

# The tests above should print true.
# c1  c2  (c1 || c2)  !c1 !c2 (!c1 || !c2) (c1 || c2) && (!c1 || !c2)
# t   f       t       f   t         t                 t
# t   t       t       f   f         f                 f
# f   f       f       t   t         t                 f
# f   t       t       t   f         t                 t
puts xor?("hi", nil)