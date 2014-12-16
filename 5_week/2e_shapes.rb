class Shape
  def rotate_on_click
    #using CSS and/or jQuery
    #shape rotates 360 degrees on click
    #pivot point is the center of the shape
  end

  def music_on_click
    #using CSS and/or jQuery
    #sound file is type .AIF
    #shape plays song A on click
  end
end

class Square < Shape
  def music_on_click
    #super
    #shape plays song B on click
  end
end

class Circle < Shape
  def music_on_click
    #super
    #shape plays song C on click
  end
end

class Triange < Shape
  def music_on_click
    #super
    #shape plays song D on click
  end
end