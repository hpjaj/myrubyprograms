age_in_seconds = 979000000
age_in_years = age_in_seconds / 31536000
age_precise_to_the_hundreth = format("%.2f", age_in_years)

puts "If you are #{age_in_seconds} 'seconds' old, then you are #{age_precise_to_the_hundreth} years old."



# as a method
def convert_seconds_to_years(num_of_seconds)
  num_of_years = (num_of_seconds / 31536000)
  precision_to_two_decimal_places = format("%.2f", num_of_years)
  "#{num_of_seconds} seconds is equivalent to #{precision_to_two_decimal_places} years."
end

puts convert_seconds_to_years(979000000)
