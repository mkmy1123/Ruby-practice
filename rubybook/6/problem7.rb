# 問7 文字列"caffelatte"の中で使われているアルファベットとその回数を数えて表示
ary = "caffelatte".chars
result = {}
ary.each do |s|
  if result[s] == nil
    result[s] = 1
  else
    result[s] += 1
  end
end
p result
