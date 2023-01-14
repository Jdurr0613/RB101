=begin
Describe the difference between ! and ? in Ruby. And explain what would 
happen in the following scenarios:

  Both ! and ? have several uses in Ruby. When placed at the end of methods
  ! indicates a destructive method, which will mutate the object it is called
  on. A ? at the end of a method indicates that the method will return a 
  boolean value. ! is also used to negate a boolean value. ? can be used 
  as a ternary operator.

1 What is != and where should you use it
    != is the logical 'not equal to' operator. When comparing two variables or
    statements, '!=' will result in a value of true if the two variables or 
    statements are not identical to one another.

2 Put ! before something
  Putting ! before a statement negates its boolean value. !true = false, etc

3 Put ! after something, like words.uniq!
  An ! after a method, such as in the above example, indicate that the method
  will mutate the object that it is called on. In this case the .uniq! method
  will alter the object 'words'

4 Put ? before something
  ? before two statements defines the ternary operator. 
  argument ? if true : if false

5 Put ? after something
  A ? after a method indicates that the method will return a boolean value. 

6 Put !! before something
  !! before a statement returns the boolean value of that statement.
=end