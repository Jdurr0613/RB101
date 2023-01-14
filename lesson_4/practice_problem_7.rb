# What is the block's return value in the following code? How is it determined? Also, what
# is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# any? returns true if any argument in the block results in true. Since 1 is true, the block
# calls puts on 1 then exits returning true.
