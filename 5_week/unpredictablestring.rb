class String

  def initialize(stringer)
    @stringer = stringer
  end

end


class UnpredictableString < String

  def scramble
    scrambled = @stringer.split("").shuffle.join
  end

end

blah = "It was a dark and stormy night."
x = UnpredictableString.new(blah)
puts x.scramble