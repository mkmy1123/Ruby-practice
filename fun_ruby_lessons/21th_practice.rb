# 21章は Procクラス

# 1. collectメソッドを自作する
def my_collect(obj, &block)
  result = []
  obj.each do |elem|
    result << block.call(elem)
  end
  result
end

ary = my_collect([1, 2, 3, 4, 5]) do |i|
  i * 2
end
p ary

# 2. 結果参照
to_class = :class.to_proc
p to_class.call("test") # String
p to_class.call(123) # Integer
p to_class.call(2 ** 100) # Integer

# ※期待の結果はこちらだそうだが最新バージョンでは表示されず、2.2.0では再現可能だった
# p to_class.call("test")    #=> String
# p to_class.call(123)       #=> Fixnum
# p to_class.call(2 ** 100)  #=> Bignum

# 3. 「それまで与えられた引数の合計を返す」Procオブジェクトを返すメソッド
def accumlator
  total = 0
  Proc.new do |arg|
    total += arg
  end
end

acc = accumlator
p acc.call(1) #=> 1
p acc.call(2) #=> 3
p acc.call(3) #=> 6
p acc.call(4) #=> 10
