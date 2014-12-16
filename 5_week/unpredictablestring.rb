class String

  def initialize(stringer)
    @stringer = stringer
  end

end


class UnpredictableString < String

  def scramble
    scrambled = @stringer.split("").shuffle.join
  #   arr = stringer.split("")
  #   scrambled_arr = []
  #   until arr.length == 0
  #     rand_position = rand(arr.length)
  #     scrambled_arr << arr[rand_position]
  #     arr.delete_at(rand_position)  
  #   end
  #   scrambled_arr.join
  end

end

blah = "It was a dark and stormy night."
x = UnpredictableString.new(blah)
puts x.scramble