# 問9 次のように表示するプログラムを繰り返しを使用して書く
7.times do |i|
  if i == 0 || i == 3
    puts "カフェラテ"
  elsif i == 6
    puts "フラペチーノ"
  else
    puts "モカ"
  end
end
