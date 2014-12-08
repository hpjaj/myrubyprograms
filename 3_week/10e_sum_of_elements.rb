collection = [1, 2, 3, 4, 5] 
sum = 0
collection.each do |num|
  sum = sum += num
end
puts sum
