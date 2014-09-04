def convert_seconds_to_years_and_months(age_in_seconds)
  @years_old = age_in_seconds / (60 * 60 * 24 * 365)
  @remaining_months = (age_in_seconds % (60 * 60 * 24 * 365) ) / ( 60 * 60 * 24 * 30 )
end

def prints_age_in_years_and_months(age_in_seconds)
  puts "Being #{age_in_seconds} seconds old is equivalent to being #{@years_old} years and #{@remaining_months} months old."
end

ages_in_seconds = [
  979000000,
  2158493738,
  246144023,
  1270166272,
  1025600095,
]

ages_in_seconds.each do |seconds|
  convert_seconds_to_years_and_months(seconds) 
  prints_age_in_years_and_months(seconds)   
end
