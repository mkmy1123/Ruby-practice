# 前年度の一覧表の年齢欄をそれぞれ +1 するだけで今年度の表が作れる。
# 昨年度の一覧表が与えられるので、今年度の一覧表を出力してください。

count = gets.to_i
result = []

count.times do
  temp = gets.split(' ')
  result << "#{temp[0]} #{temp[1].to_i + 1}"
end

puts result
