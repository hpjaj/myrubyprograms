days_in_a_leap_year = 365.25
days_in_a_non_leap_year = 365

puts "Enter a year and I will tell you TRUE or FALSE, if that year is or is not a leap year."
print "> "

@year_choice = gets.to_i
  
leap_year_calculator = case  
       when @year_choice % 400 == 0 then true  
       when @year_choice % 100 == 0 then false  
       else @year_choice % 4   == 0  
       end  

# use the '%o4d' % number format to return a value that is at minimum four places to the left of the decimal point
puts "The year #{'%04d' % @year_choice} #{ leap_year_calculator ? 'IS' : 'is NOT' } a leap year." 

def calculate_minutes_in_a_year_with_this_many_days(days_in_this_year)
  @number_of_minutes = days_in_this_year * 24 * 60
end

leap_year_calculator ? calculate_minutes_in_a_year_with_this_many_days(days_in_a_leap_year) : calculate_minutes_in_a_year_with_this_many_days(days_in_a_non_leap_year)



puts "And, it has #{@number_of_minutes.to_i} minutes in it."

