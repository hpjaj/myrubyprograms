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

leo = Dog.new("Leo")