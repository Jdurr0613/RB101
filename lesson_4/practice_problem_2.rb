# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# The count should return the number of elements in the array that meet the criteria given
# in the block. In this case it should return the number of elements with a length less than
# 4. We can see this by executing the block in irb.
