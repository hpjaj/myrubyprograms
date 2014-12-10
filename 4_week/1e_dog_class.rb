class Dog

  def initialize(name)
    @name = name
  end

  def bark
    "#@name barks: Woof Woof"  #illustrates a shorthand syntax for string interpolation
  end

  def eat
    "Yum yum"
  end

  def chase_cat
    "Cat cat cat"
  end

end

my_dogs = %w(Fido Lassie Pluto Tramp Lady).map do |name|
  Dog.new(name)
end

methods = %w(bark eat chase_cat)
my_dogs.each do |dog|
  methods.each do |m|
    puts dog.send(m)
  end
end
