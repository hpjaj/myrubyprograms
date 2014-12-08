# Reads a file
def reads_a_file(file)
  whole_file_in_a_string = File.read(file) 
end

def character_count_with_spaces(file_string)
  file_string.length
end

def character_count_without_spaces(file_string)
  file_string.split(" ").join.length
end

# Determines number of lines in a file
def line_counter(file)
  File.open(file, 'r') do |f1|  
    line_count = 0
    while line = f1.gets  
      line_count += 1 
    end  
    line_count
  end 
end

def word_count(file_string)
  file_string.split(" ").size
end

def sentence_count(file_string)
  periods = file_string.split(".")
  question_marks = file_string.split("?")
  exclamation_points = file_string.split("!")
  puts periods.inspect
  puts periods.length

  puts question_marks.inspect
  puts question_marks.length

  puts exclamation_points.inspect
  puts exclamation_points.length

  puts "************"
  puts
  number_of_sentences = (
    periods.length + 
    question_marks.length + 
    exclamation_points.length - 3 + 1
    # minus one for each type 
    # - 3
    # plus one for accounting for the last sentence
    # + 1
    )
end


puts sentence_count(reads_a_file('sentencer.txt'))