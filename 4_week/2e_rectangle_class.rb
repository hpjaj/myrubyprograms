class Rectangle

  def initialize(length, width)
    @width = width
    @length = length
  end

  def area
    @length * @width  
  end

  def perimeter
    2 * ( @width + @length )
  end

end

r = Rectangle.new(23.45, 34.67) 
puts r.area
puts r.perimeter