# start prompt should prompt user to enter what they want to convert from and to
# prompt user for value to be converted
# display converted value
# display start prompt

@absolute_zero_in_celsius = -273.15
@absolute_zero_in_fahrenheit = -459.67

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
  elsif @fahrenheit_choice > @absolute_zero_in_fahrenheit && @fahrenheit_choice < 0
    convert_fahrenheit_to_celsius
  elsif @fahrenheit_choice > 0
    convert_fahrenheit_to_celsius
  else
    puts "Value must be greater than absolute zero, which is #{@absolute_zero_in_fahrenheit} degrees Fahrenheit."
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
  elsif @celsius_choice > @absolute_zero_in_celsius && @celsius_choice < 0
    convert_celsius_to_fahrenheit
  elsif @celsius_choice > 0
    convert_celsius_to_fahrenheit
  else
    puts "Value must be greater than absolute zero, which is #{@absolute_zero_in_celsius} degrees Celsius."
    get_celsius_value_to_convert
  end
end

def convert_fahrenheit_to_celsius
  @converted_temperature = (@fahrenheit_choice - 32) * 5 / 9
  make_precise_to_two_decimal_places
end

def make_precise_to_two_decimal_places
  @new_precise_temperature = format("%.2f", @converted_temperature)
  print_converted_temperature
end

def print_converted_temperature
  puts "Converted temperature:  #{@new_precise_temperature}"
  reset_program
end

def convert_celsius_to_fahrenheit
  @converted_temperature  = ((@celsius_choice * 9) / 5) + 32
  make_precise_to_two_decimal_places
end

def reset_program
  puts
  puts "*" * 10
  puts
  start_prompt
end

start_prompt

