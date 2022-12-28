# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# shift removes the first element of the enumerable object. In the case of a hash it 
# removes the first key/value pair. Calling puts on hash after the call to shift prints
# the resulting Hash {:b=>"bear"}


puts hash
