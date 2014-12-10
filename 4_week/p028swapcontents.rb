def swap_contents(file_1, file_2)
  file_content_1 = File.read("#{file_1}")
  file_content_2 = File.read("#{file_2}")
  File.write("#{file_1}", file_content_2)
  File.write("#{file_2}", file_content_1)
end

first_file, second_file = ARGV
swap_contents(first_file, second_file)