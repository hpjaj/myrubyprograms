def fizz_buzz
  (1..100).each do |num|
    if (num % 5 == 0) && (num % 3 == 0)
      print 'FizzBuzz'
    elsif num % 3 == 0
      print 'Fizz'
    elsif num % 5 == 0
      print 'Buzz'
    else print num
    end
  end
end

fizz_buzz