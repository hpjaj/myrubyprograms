s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

def string_processor(non_split_string)
  line_number = 0
  split_into_sentences = non_split_string.split(/\n/)
  split_into_sentences.each do |sentence|
    sentence.prepend("Line " + (line_number += 1).to_s + ": " )
  end
end

puts string_processor(s)