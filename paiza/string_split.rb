# スペース区切りの2つの整数と、文字列が入力されるので、
# 2つの整数の範囲の部分文字列を出力。

n = gets.split(' ')
word_start_point = n[0].to_i
word_end_point = n[1].to_i

word = gets.split(//)

answer = []
i = word_start_point - 1
loop do
  answer << word[i]
  i += 1
  if i >= word_end_point 
    break
  end
end

puts answer.join
