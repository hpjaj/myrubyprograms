def start_program
  puts "Soooo, what's new, sonny boy?"
  gets_grandsons_input
end

def gets_grandsons_input
  print "> "
  @grandson_choice = gets.chomp 
  determines_if_grandma_heard
end

def determines_if_grandma_heard
  if @grandson_choice == 'BYE'
    exit_program
  elsif @grandson_choice == @grandson_choice.upcase
    calculates_grandmas_random_year_response
  else
    grandma_cannot_hear_you
  end
end

def exit_program
  puts "Goodbye sonny.  Come back soon."
  exit(0)
end

def calculates_grandmas_random_year_response
  years_she_remembers = (1930..1950).to_a
  random_number = rand(years_she_remembers.size) 
  @random_year = years_she_remembers[random_number]
  grandma_responds_with_year(@random_year)
end

def grandma_responds_with_year(year)
  puts "NO, NOT SINCE #{year}!"
  gets_grandsons_input
end

def grandma_cannot_hear_you
  puts "HUH?! SPEAK UP, SONNY!"
  gets_grandsons_input
end

start_program