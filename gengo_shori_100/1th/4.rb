# 05. n-gram
# 与えられたシーケンス（文字列やリストなど）からn-gramを作る関数を作成せよ．
# この関数を用い，”I am an NLPer”という文から単語bi-gram，文字bi-gramを得よ．

def n_gram(target, n)
  ary = []
  (target.length - n + 1).times do |i|
    ary << target[i, n]
  end
  ary
end

target = "I am an NLPer"
p n_gram(target, 2)

target = target.split(' ')
p n_gram(target, 2)
