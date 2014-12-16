def sonny_says
  puts "Sonny says:"
  print "> "
  @what_sonny_says = gets.chomp
end
 
def grandma_says(sonny_said)
  print "Grandma responds: "
  if @what_sonny_says == @what_sonny_says.upcase
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end

def sonnys_conversation_with_grandma
  count = 0
  until count == 3
    grandma_says(sonny_says)
    if @what_sonny_says != 'BYE'
      count = 0
    elsif @what_sonny_says == 'BYE' 
      count +=1
    end
  end
  "OH, NEVERMIND. GOODBYE SONNY."
end

puts sonnys_conversation_with_grandma