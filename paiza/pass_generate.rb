# 例
# ・ N = 5 , Q = 1 , n_1 = 2 , c_1 = 'T' , C = 'K' のとき
# パスワードは 5 文字であり、 2 文字目が 'T' , それ以外の文字を 'K' としたものである "KTKKK" が K さんのパスワードとなる。

N = gets.to_i
Q = gets.to_i

keywords = {}
Q.times do
  temp = gets.split(' ')
  keywords[temp[0]] = temp[1]
end

answer = gets.chomp * N
keywords.each do |key, word|
  answer[key.to_i - 1] = word
end

puts answer
