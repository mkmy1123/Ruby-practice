# 英単語列に含まれる英単語の出現回数を出現した順番に出力してください。

ary = gets.split(' ')
hash = {}
ary.each do |word|
  if hash[word]
    hash[word] += 1
  else
    hash[word] = 1
  end
end

hash.each do |key, value|
  puts "#{key} #{value}"
end
