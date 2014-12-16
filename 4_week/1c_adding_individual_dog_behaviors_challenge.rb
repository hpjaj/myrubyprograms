class Dog

  def initialize(name)
    @name = name
  end

  def teach_trick(x={dance: @dancing, poo: @pooing, laugh: @laughing})
    @dancing
  end

  def dance(dancing="#{@name} doesn't know how to dance!" || {})
    dancing   
  end

  # def poo(@pooing="#{@name} doesn't know how to poo!")
  #   @pooing
  # end

  # def laugh(@laughing="#{@name} doesn't know how to laugh!")
  #   @laughing
  # end

end