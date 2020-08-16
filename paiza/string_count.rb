# 1行目で文字列 s、2行目で文字列 t が入力されます。
# s が t の中で何回出現するかカウントして出力してください。

pattern = gets.chomp
string = gets.chomp

result = 0
(0..(string.size - pattern.size)).each do |i|
  substring = string.slice(i, pattern.size)

  if substring == pattern
    result += 1
  end
end

puts result
# 解答コードを開示したものです、めちゃめちゃわかりやすい
