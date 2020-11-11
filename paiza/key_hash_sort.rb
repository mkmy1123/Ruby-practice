# 文字と整数の組のソート
# 1行目に行数を表す整数 n、続く n 行の各行で「文字」と「整数」の組が空白区切りで入力されます。
# n 個の組を、「整数」の値で昇順に並べ変え、「文字」を出力してください。
N = gets.to_i
hash = {}

N.times do
  temp = gets.split(' ')
  hash[temp[1].to_i] = temp[0]
end

answer_values = hash.each_key.sort
answer_values.each do |val|
  puts hash.values_at(val)
end
