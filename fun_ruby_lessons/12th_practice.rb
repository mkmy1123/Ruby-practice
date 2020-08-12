# 12章は数値（Numeric）クラス

# 1. 摂氏から華氏を求めるメソッドの作成
def cels_to_fahr(cels)
  cels * 9.0 / 5.0 + 32.0
end

# 2. 華氏から摂氏をメソッドを作成、出力する
def fahr_to_cehr(fahr)
  (fahr - 32.0) * 5.0 / 9.0
end

100.times do |i|
  puts "摂氏#{i}度: 華氏#{(fahr_to_cehr(i)).round}度"
end

# 3. 1..6のランダムな整数を返すメソッド作成
def dice
  Random.rand(6) + 1
end

# 4. 10回のサイコロの合計dice10メソッド作成
def dice10
  answer = 0
  10.times do
    answer += dice
  end
  answer
end

# 5. 素数を求めるメソッドを作成
def prime?(num)
  return false if num < 2
  2.upto(num) do |i|
    if num % i == 0
      return false
      break
    end
    return true
  end
end

# 解答
# 平方根を使う理由はまだよくわからない（数学的に）
# ただRubyで明示的にreturnを返せば処理終了するので
# 間違いなくbreakは書かなくてよかった・_・

# def prime?(num)
#   return false if num < 2
#   2.upto(Math.sqrt(num)) do |i|
#     if num % i == 0
#       return false
#     end
#   end
#   return true
# end

