def sums_an_array(arr)
  sum = 0
  arr.each do |num|
    sum += num
  end
  sum
end

collection = [1, 2, 3, 4, 5] 
puts sums_an_array(collection)