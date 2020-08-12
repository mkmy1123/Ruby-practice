
# 与えられた文字列を与えられた形式で返す

# 1. 1以上であれば"plus"を出力
one = gets.to_i
one > 0 ? one = "plus" : one
puts one

# 2. 与えられた文字列が"hoge"であれば"yes"と出力
two = gets.chomp!
two == "hoge" ? two = "yes" : two
puts two

# 3. 与えられた文字列が10字であれば"ten"と出力
three = gets.chomp!
three.length == 10 ? three = "ten" : three
puts three

# 4."x"を含む文字列が与えられたら該当部分が何文字目か出力
four = gets.chomp!
flag = four.index("x")
flag.nil? ? four = "nothing" : four = flag
puts four

# 5. 与えられた文字列が5文字なら"five"
# それ以外ならば、その文字列の5文字目のみを出力
five = gets.chomp
five.length == 5 ? five = "five" : five = five[0,1]
puts five

