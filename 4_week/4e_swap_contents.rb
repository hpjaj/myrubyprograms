def swap_contents(file_1, file_2)
  File.rename("#{file_1}", "temporary.txt")
  File.rename("#{file_2}", "#{file_1}")
  File.rename("temporary.txt", "#{file_2}")
end
 
first_file, second_file = ARGV
swap_contents(first_file, second_file)


