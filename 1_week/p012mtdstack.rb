# p012mtdstack.rb

def mtd(a=99, b=a+1)
  [a,b]
end

puts mtd 

def downer(string)
  string.downcase
end

a = "HELLO"
downer(a)
puts a

def downer(string)
  string.downcase!
end

a = "HELLO"
downer(a)
puts a