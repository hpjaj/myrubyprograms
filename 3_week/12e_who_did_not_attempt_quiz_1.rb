quiz = [0,0,0,1,0,0,1,1,0,1]
non_attempts_total = 0
quiz.each do |num|
  (non_attempts_total = non_attempts_total += 1) if num == 0
end
puts "The number of participants who did not attempt Quiz 1 is #{non_attempts_total} out of #{quiz.length} total participants."