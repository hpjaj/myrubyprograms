def hello(name = 'World', punctuation = '!')
  "Hello#{',' if punctuation == '?'} #{name}#{punctuation}"
end

puts hello
puts hello "Mickey"
# I really want this to display "Hello, Minnie?"
puts hello('Minnie', '?')

__END__
1st run
Hello World!
Hello Mickey!
Hello Minnie?


Hello, World!
Hello, Mickey!
Hello, Minnie?

3rd run

Hello World!
Hello Mickey!
Hello, Minnie?
