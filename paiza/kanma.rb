# 大きな数値を 3 けたごとにカンマ区切りで出力します。

ary = []
numbers = gets.chomp.reverse.split(//)
numbers.each.with_index(1) do |num, idx|
  ary << num
  ary << ',' if (idx) % 3 == 0 && idx != numbers.length
end

puts ary.reverse.join
