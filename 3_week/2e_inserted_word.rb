def find_and_replace(content, old_string, new_string)
  @content_to_be_reset = content
  if File.file?("#{content}")
    @original_content = File.read("#{content}")
    new_file_content = @original_content.gsub(old_string, new_string)
    File.write("#{content}", new_file_content)
  else  
    @original_content = content
    new_file_content = @original_content.gsub(old_string, new_string) 
    # gsub is better for testing purposes
    # use gsub! if you want the string to retain its newly replaced content
  end
end


# Here is the existing sample file entitled 'plain_text.txt':

# text text text text text
# text text text text text
# text text word text text
# text text text text text
# text text text text text


def reset_test_file
  File.write("#{@content_to_be_reset}", @original_content)
end

# Calling the above method, passing in the sample file
find_and_replace('plain_text.txt','word', 'inserted word')

# Reset the test file back to its original state
reset_test_file


# Calling the above method, passing in a sample string instead of a file
blah = "The bird, the bird, the bird is the word."
puts find_and_replace(blah,/\bword\b/, 'inserted word')

swords = "Draw your swords, men!"
puts find_and_replace(swords,/\bword\b/, 'inserted word')

