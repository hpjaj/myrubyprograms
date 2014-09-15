x = 1
y = 2
z = 3

i_become_1st_position, i_become_2nd_position, i_become_3rd_position = y, x, z
# these variables will be assigned in respective order from the left
# side of the equals sign to the right side of the equals sign.  So in 
# this case, x = y and y = x
# also, we need to consider the order this happens in.  x = y is the first 
# assignment, and y = x is the second, or most recent, assignment.
# So what i think will happen is that x = y goes first, and at this moment in time
# y is assigned to 20 from line 2, so x = 20
# and then y = x is evaluated, and this point in time x = 20, so y would equal 20
puts i_become_1st_position
puts i_become_2nd_position
puts i_become_3rd_position

=begin
z, x, y =
3
1
2

y, x, z =
2
1
3




x = 20
y = 20

puts 20
puts 20

=end
