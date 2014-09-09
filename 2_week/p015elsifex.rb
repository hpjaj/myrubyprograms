# original example


puts "Hello, what is your name?"
STDOUT.flush
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Satish'
  puts 'What a nice name!'
else
  if name == 'Sunil'
    puts 'Another nice name!'
  end
end

puts "Hello, what's your name?"
STDOUT.flush
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Satish' || name == 'Sunil'
  puts 'What a nice name!'
end




=begin
For example:


    puts "Hello, what is your name?"
    STDOUT.flush
    name = gets.chomp
    puts 'Hello, ' + name + '.'
puts

# versus

    puts "Hello, what is your name?"
    name = STDIN.gets.chomp
    puts 'Hello, ' + name + '.'

=end

