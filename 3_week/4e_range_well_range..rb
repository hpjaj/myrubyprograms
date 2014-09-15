    a = (1930...1951).to_a
    puts a[rand(a.size)]

*The numbers that will not be displayed are 1951 and 1952.  

They will not be displayed because (1930...1951) is an exclusive range, meaning the top end number that defines the range is not included in the range.  The low end number is.  

In this case, 1930 - 1950 are the range's boundries.*
(1930...1951)

*Once that has been set, then you: 

<br>- expand the range out with the .to_a method
<br>- determine the size of the array with a.size, which is 21
<br>- put forward a random number between 0 and 21 (not including 21)
<br>- put the number that is in the array at the random numbers index*
