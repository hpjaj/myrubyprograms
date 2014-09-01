y = false
z = true

# I think this will assign x equal to true;
# but it does not.
# that would only have been the case when using
# the || operator, not the 'or' operator.
# the 'or' operator yields the first thing it comes across, 
# regardless if it is false or not
x = y or z

# This should print to the screen false
puts x

# This should set x equal to false, thus yielding
# false or true, which should yield false,
# because we are using the 'or' operator,
# not the || operator
(x = y) or z

# this should print false, as we assigned x equal to false
# in the previous lines
puts x

# the parentheses are higher in the order of 
# precedence; therefore, they are executed first
# so (y or z) would equal true in this case
# this will assign x equal to true
x = (y or z)

# this should print true
puts x


# practice below for comparing || to 'or'
puts nil || 2008  
puts false || 2008  
puts "ruby" || 2008

puts nil or 2008 
puts false or 2008  
z = false or 2008  
puts "For 'z = false or 2008', the result is: #{z} " 
z = (false or 2008)
puts "For 'z = (false or 2008)', the result is: #{z} " 

puts "ruby" or 2008





