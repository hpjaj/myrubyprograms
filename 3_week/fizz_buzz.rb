def fizzBuzz(num_range)
  (num_range).each do |num|
    if ( num % 3 == 0 ) && ( num % 5 == 0 )
      print 'FizzBuzz'
    elsif num % 3 == 0
      print 'Fizz'
    elsif num % 5 == 0
      print 'Buzz'
    else
        print num 
    end
  end
end

fizzBuzz(1..100)