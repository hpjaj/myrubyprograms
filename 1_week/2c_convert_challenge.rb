# start prompt should prompt user to enter what they want to convert from and to
# prompt user for value to be converted
# display converted value
# display start prompt

def quit
  puts
  puts "You have elected to quit. Peace."
  puts

  # Exit the program  (exit(0) i think)
  exit(0)
end

def start_prompt
  puts
  puts "This program converts degrees Fahrenheit to degrees Celsius, and vice versa."
  puts
  puts "If you would like to convert Fahrenheit to Celsius, type: f to c"
  puts "If you would like to convert Celsius to Fahrenheit, type: c to f"
  puts "Type QUIT to exit the program."
  print "> "
  @conversion_choice = gets.chomp.downcase 
  
  if @conversion_choice == 'f to c'
    get_fahrenheit_value_to_convert
  elsif @conversion_choice == 'c to f'
    get_celsius_value_to_convert
  elsif @conversion_choice == 'quit'
    quit
  else 
    puts
    puts "I did not understand that."
    start_prompt
  end
end

def get_fahrenheit_value_to_convert
  puts "What value do you want to have converted into Celsius?  Enter numbers only."
  print "> "
  @fahrenheit_choice = gets.chomp.to_f

  if @fahrenheit_choice == 0
    puts "I did not understand that."
    get_fahrenheit_value_to_convert
  elsif @fahrenheit_choice > -459.67 && @fahrenheit_choice < 0
    convert_fahrenheit_to_celsius
  elsif @fahrenheit_choice > 0
    convert_fahrenheit_to_celsius  
  else
    puts "Value must be greater than absolute zero, which is -459.67 degrees Fahrenheit."
    get_fahrenheit_value_to_convert
  end
end

def get_celsius_value_to_convert
  puts "What value do you want to have converted into Fahrenheit?  Enter numbers only."
  print "> "
  @celsius_choice = gets.chomp.to_f
  
  if @celsius_choice == 0
    puts "I did not understand that."
    get_celsius_value_to_convert  
  elsif @celsius_choice > -273.15 && @celsius_choice < 0
    convert_celsius_to_fahrenheit
  elsif @celsius_choice > 0
    convert_celsius_to_fahrenheit  
  else
    puts "Value must be greater than absolute zero, which is -273.15 degrees Celsius."
    get_celsius_value_to_convert
  end
end

def convert_fahrenheit_to_celsius
  temperature_in_celsius = (@fahrenheit_choice - 32) * 5 / 9
  rounded_to_decimal = (temperature_in_celsius * 100).round / 100.0
  puts "#{@fahrenheit_choice} degrees Fahrenheit is #{rounded_to_decimal} degrees Celsius."
  reset_program
end

def convert_celsius_to_fahrenheit
  temperature_in_fahrenheit = ((@celsius_choice * 9) / 5) + 32 
  rounded_to_decimal = (temperature_in_fahrenheit * 100).round / 100.0
  puts "#{@celsius_choice} degrees Celsius is #{rounded_to_decimal} degrees Fahrenheit."
  reset_program
end

def reset_program
  puts
  puts "*" * 10
  puts
  start_prompt
end

start_prompt

