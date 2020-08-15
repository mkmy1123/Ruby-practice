n = gets.to_i
answer = []

n.times do
  i = gets.to_i
  if answer.last.to_i < i
    answer << i
  else
    answer.each_with_index do |ans, idx|
      if i <= ans
        answer.insert(idx,i)
        break
      end
    end
  end
end

puts answer

