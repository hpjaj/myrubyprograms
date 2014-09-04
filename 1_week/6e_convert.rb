=begin
>> convert -40
=> -40.0
>> convert 98.6
=> 37.0
>> convert(98).round(6)
=> 36.666667
=end
def convert(temp_in_fahr)
  temp_in_cels = (temp_in_fahr - 32) * 5 / 9
  rounded_to_decimal = (temp_in_cels * 100).round/100.0
  # puts "#{temp_in_fahr} degrees Fahrenheit is #{rounded_to_decimal} degrees Celsius."
end

puts convert(81)    # yielded 27.0

puts convert(-40)   # yielded -40.0

puts convert(32)    # yielded 0.0

puts convert(-40) + convert(32)   # yielded -40.0

