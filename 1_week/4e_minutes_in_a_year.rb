number_of_years_to_convert = 1
number_of_minutes_in_a_year = number_of_years_to_convert * 525600
puts "In #{number_of_years_to_convert} year(s) there are #{number_of_minutes_in_a_year} minutes."


# as a method
def convert_years_to_minutes(num_of_years)
  number_of_minutes = num_of_years * 525600
  puts "In #{num_of_years} year(s) there are #{number_of_minutes} minutes."
end

convert_years_to_minutes(12)

