# 1行目の英大文字 X から、2行目の英大文字 Y の範囲に3行目のアルファベット C が含まれていれば"true", そうでなければ"false"と出力してください。
# X が Y よりもアルファベット順で後ろになる場合(X = 'G', Y = 'F'のときなど)も"false"と出力してください。

array = Array.new

3.times do
  array << gets.split(' ')
end

new_ary = Range.new(array[0].to_s, array[1].to_s)

puts new_ary.to_a.include?(array[2].to_s)
