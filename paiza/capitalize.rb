#スペース区切りの2つの整数と、文字列が入力されます。
# 2つの整数の範囲の部分文字列を、大文字にして出力してください。

start, finish = gets.split(' ').map(&:to_i)

sentence = gets.split(//)

sentence.each_with_index do |s, idx|
    if idx >= (start - 1) && idx <= (finish - 1)
        s.capitalize!
    end
end

puts sentence.join
