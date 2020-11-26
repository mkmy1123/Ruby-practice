# N 個の要素からなる数列Aが与えられます。A に対し、次の 3 つの操作をおこなうプログラムを作成してください。
# 0 = push_back : Aの末尾にxを追加する
# 1 = pop_back : Aの末尾を削除する
# 2 = print : 数列Aを半角スペース区切りで出力する

N, Q =  gets.split(' ').map(&:to_i)
ary =  gets.split(' ').map(&:to_i)

Q.times do
  tmp = gets.split(' ').map(&:to_i)
  case tmp[0]
  when 0
    ary << tmp[1]
  when 1
    ary.pop
  when 2
    puts ary.join(' ')
  end
end
