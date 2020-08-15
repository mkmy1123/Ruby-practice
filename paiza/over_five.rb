# 改行区切りで整数がn個入力され
# n個の整数のうち、5以上のものを全て足し合わせた値を出力

count = gets.to_i
answer = 0

count.times do
  int = gets.to_i
  answer += int if int >= 5
end

puts answer
