# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# size is called on the element returned from the call to pop. In this case pop returns
# 'caterpillar'. Calling size on 'caterpillar' returns 11.
