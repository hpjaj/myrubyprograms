def sonny_says
  puts "Sonny says:"
  print "> "
  what_sonny_says = gets.chomp
end
 
def random_year(year_range)
  year = rand(year_range)
end
 
def grandma_says(sonny_said)
  print "Grandma responds: "
  if sonny_said == sonny_said.upcase
    puts "NO, NOT SINCE #{random_year(1930..1950)}!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end
 
def sonnys_conversation_with_grandma
  loop do
    random_year(1930..1950)
    grandma_says(sonny_says)
    if sonny_says == 'BYE'
      puts "OH, NEVERMIND. GOODBYE SONNY."
      break  
    end
  end
end
 
sonnys_conversation_with_grandma