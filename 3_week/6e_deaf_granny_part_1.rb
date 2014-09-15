# We won't test this at the moment, too high level  (Acceptance test level)
def start_program
  puts "Soooo, what's new, sonny boy?"
  gets_grandsons_input
end

def gets_grandsons_input #  Goto statements are not great, they can make for spaghetti code
  print "> "
  @grandson_choice = gets.chomp
  determines_if_grandma_heard
end

# doctest: grandma_heard?
# >> determines_if_grandma_heard("SHOUTED")
# => true
def determines_if_grandma_heard # Too complicated, doesn't return, but actually routes business logic we won't test for right now
  if @grandson_choice == 'BYE'
    grannys_response_to_bye
  elsif @grandson_choice == @grandson_choice.upcase
    calculates_grandmas_random_year_response
  else
    grandma_cannot_hear_you
  end
end

# doctest: Granny always responds to "BYE"
# >> grannys_response_to_bye
# => "Goodbye Sonny.  Come back soon."
def grannys_response_to_bye
  "Goodbye Sonny.  Come back soon."
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

# ====================
# doctest: grannys_greeting
# >> grannys_greeting('Sonny')
# => "Hello Sonny!"
def grannys_greeting(name)
  "Hello #{name}!"
end
if __FILE__ == $0 # This is an "application guard" or also called a "Library guard"
  # Code I wish I had.   Wish driven development.
  puts "This discussion will continue until you, as our feeble hero 'Sonny', shouts 'BYE'."
  puts
  puts grannys_greeting('Sonny')
  exit
  sonny_says = prompt_sonny
  until sonny_says == 'BYE'
    granny_responds_to(sonny_says)
    sonny_says = prompt_sonny
  end

end

