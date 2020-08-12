# 13章は配列（Array）クラス

# 1. 1〜100の整数、昇順配列を作成
a = (1..100).to_a

# 2. 1を100倍にした配列を作成（新配列 / 破壊的の 2種類）
a2 = a.map { |a| a * 100 } #新配列
a.map! { |a| a * 100 } #破壊的

# 3. 1から3の倍数のみの新配列を作成、そのまま3の倍数以外を消去する
a = (1..100).to_a
a3 = a.collect { |a| a if a % 3 == 0 }
a3.compact!
# もっとスマートに書ける
# a3 = a.reject{|i| i % 3 != 0 }
a.delete_if { |a| a % 3 != 0 }

# 4. 1の配列を逆順に並べ替える
a = (1..100).to_a
a.reverse!

# 5. 1の配列の整数の和を求める
a = (1..100).to_a
sum = 0
a.each { |a| sum += a }
puts sum
# injectを使うともっと簡単
# a.inject(0){|result, i| result += i }

# 6. 1〜11 11〜20を取り出す
ary = (1..100).to_a
result = Array.new
10.times do |i|
  result << ary[i * 10, 10]
end
p result

# 7. 二つの配列を足し合わせるsum_arrayメソッドを作成
def sum_array(ary1, ary2)
  result = []
  ary1.each_with_index do |a, i|
    result << a + ary2[i]
  end
  result
end

# 解答
# どう考えてもこっちが書けた方がいいな
def sum_array_zip(ary1, ary2)
  result = Array.new
  ary1.zip(ary2){ |a, b| result << a + b }
  return result
end
