# Alyssa was asked to write an implementation of a rolling buffer. Elements are 
# added to the rolling buffer and if the buffer becomes full, then new elements 
# that are added will displace the oldest elements in the buffer.

# She wrote two implementations saying, "Take your pick. Do you like << or + 
# for modifying the buffer?". Is there a difference between the two, other than 
# what operator she chose to use to concatenate an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# rolling_buffer1 uses << to add elements to the array, which  mutates buffer 
# on each call. Rolling_buffer2 uses + for array concatenation, which does not
# mutate the buffer array. The net effect is that rolling_buffer1 works as intended
# while rolling_buffer2 does not. 

arr = []
10.times { |x| rolling_buffer1(arr,5,x) }
print arr

# calls the method 10 times, incrementing the new_element argument on each iteration.
# The call to print shows that the final value of arr is [5, 6, 7, 8, 9]

arr1 = []
10.times { |x| rolling_buffer2(arr1,5,x) }
print arr1

# also calls the method 10 times. Since + is non-destructive, rolling_buffer2 does not
# modify arr1. The call to print shows that the final value of arr1 is []