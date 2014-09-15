def method
  a = 50
  puts a
end

# sets a to 10 
a = 10

# this calls the method "method" with has a puts in it, so it will put a
# which is local scope inside the method, and equal to 50
# so it puts 50
method

# then this puts the a that is local scope outside of the method, which
# was set to 10
puts a