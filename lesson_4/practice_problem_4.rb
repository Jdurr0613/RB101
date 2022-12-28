# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
# The arguments given to the block are value and hash. This will result in created a hash
# defined as {value => hash}. We have value defined as hash[value[0]] = value. Then value
# is equal to the zeroth element of the string given to the value of hash. For a hash of 
# 'ant' the value of hash[value[0]] will be ['a']
