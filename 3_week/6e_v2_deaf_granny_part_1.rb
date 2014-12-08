# Granny's Greeting is awesome because we can use it to introduce our players
# to Granny, and let them know what Granny expects
#
#     doctest: An example of using grannys_greeting
#     >> grannys_greeting('Sonny')
#     => "Hello Sonny!"
def grannys_greeting(name)
  "Hello #{name}!"
end

# doctest: prompt_sonny
# >> prompt_sonny test = true
# => "HELLO"
def prompt_sonny(test = false)
  test ? "HELLO" : gets.chomp
end

if __FILE__ == $0 # This is an "application guard" or also called a "Library guard"
  # Code I wish I had.   Wish driven development.
  puts "This discussion will continue until you, as our feeble hero 'Sonny', shouts 'BYE'."
  puts
  puts grannys_greeting('Sonny')
  sonny_says = prompt_sonny
  until sonny_says == 'BYE'
    granny_responds_to(sonny_says)
    sonny_says = prompt_sonny
  end
  puts "Thank you for visiting your Granny!"
end
