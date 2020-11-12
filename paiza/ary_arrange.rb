# あなたは集団行動のリーダーです。次のような指示を出すことで様々な列の操作ができます。

# swap A B
# 先頭から A 番目の人と、先頭から B 番目の人の位置を入れ替える。
# reverse
# 列の前後を入れ替える。
# resize C
# 先頭から C 人を列に残し、それ以外の人を全員列から離れさせる。ただし、列が既に C 人以下の場合、何も行わない。

# 初め、列には番号 1 〜 N の N 人がおり、先頭から番号の昇順に並んでいます。(1, 2 , 3, ..., N)
# あなたの出した指示の回数 Q とその指示の内容 S_i (1 ≦ i ≦ Q) が順に与えられるので、全ての操作を順に行った後の列を出力してください。

def swap(ary, idx_a, idx_b)
  a = ary[idx_a - 1]
  b = ary[idx_b - 1]
  ary[idx_a - 1] = b
  ary[idx_b - 1] = a
  ary
end

def resize(ary, idx)
  new_ary = []
  ary.each.with_index {|a, i| new_ary << a if (idx - 1) < i }
  ary - new_ary
end

def arrange_ary(ary, que)
  if que[0] == "swap"
    ary = swap(ary, que[1].to_i, que[2].to_i)
  elsif que[0] == "resize"
    ary = resize(ary, que[1].to_i)
  else
    ary.reverse!
  end
  ary
end

N, Q = gets.split(' ').map(&:to_i)
ary = (1..N).to_a

Q.times do
  que = gets.split(' ')
  ary = arrange_ary(ary, que)
end

puts ary
