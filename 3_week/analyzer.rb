def reads_a_file(file)
  File.read(file) 
end


def character_count_with_spaces(file_string)
  file_string.length
end


def character_count_without_spaces(file_string)
  file_string.split(" ").join.length
end


def line_count(file_string)
  file_string.lines.count
end


def word_count(file_string)
  file_string.split(" ").size
end


def sentence_count(file_string)
  file_string.split(/[.?!]/).length
end

def paragraph_count(file_string)
  file_string.split(/\n\n/).length
end


def average_words_per_sentence(num_words, num_sentences)
  ( num_words.to_f / num_sentences ).round(2)
end


def average_sentences_per_paragraph(num_sentences, num_paragraphs)
  ( num_sentences.to_f / num_paragraphs ).round(2)
end


# Uses this 'file' variable to capture the desired file when calling 'analyzer.rb'
filename = ARGV[0]

# Uses this 'text' variable to read and hold the desired 
# file's content, in the form of a singular string
text_string = reads_a_file(filename)

def statistics(file, text)
  <<-EOS
  The file '#{file}' has the following statistics:

  Character count: #{character_count_with_spaces(text)}
  Character count (excluding spaces): #{character_count_without_spaces(text)}
  Line count: #{line_count(text)}
  Word count: #{word_count(text)}
  Sentence count: #{sentence_count(text)}
  Paragraph count: #{paragraph_count(text)}
  Average number of words per sentence: #{average_words_per_sentence(word_count(text), sentence_count(text) )}
  Average number of sentences per paragraph: #{average_sentences_per_paragraph(sentence_count(text), paragraph_count(text) )}
  EOS
end

puts statistics(filename, text_string)