def quiz_completion_numbers(arr)
  incomplete = []
  arr.each do |num|
    ( incomplete << num ) if ( num == 0 )
  end
  "The number of participants who did not attempt Quiz 1 is #{incomplete.length} out of #{arr.length} total participants."
end

quiz = [0,0,0,1,0,0,1,1,0,1]
puts quiz_completion_numbers(quiz)