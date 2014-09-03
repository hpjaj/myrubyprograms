
def convert_seconds_to_years_and_months(age_in_seconds)

  years_old = age_in_seconds / (60 * 60 * 24 * 365)

  remaining_months = (age_in_seconds % (60 * 60 * 24 * 365) ) / ( 60 * 60 * 24 * 30 )



  puts "Being #{age_in_seconds} seconds old is equivalent to being #{years_old} years and #{remaining_months} months old."

end





convert_seconds_to_years_and_months(2158493738)     # 68 years and 5 months
