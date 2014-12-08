def odd_or_even(arr)
  arr.each do |num|
    print num
    puts num % 2 == 0 ? ' is even' : ' is odd'
  end
end

collection = [12, 23, 456, 123, 4579]
odd_or_even(collection)