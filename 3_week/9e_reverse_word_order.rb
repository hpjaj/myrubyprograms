def reverse_word_order(string)
  string.split(" ").reverse.join(" ")
end

blah = "Hi there John"
puts reverse_word_order(blah)