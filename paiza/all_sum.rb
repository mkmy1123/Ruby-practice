# ２つの整数 A , B が与えられるので、 A, A + 1, .... B - 1, B の総和を求めてください。
start_num, end_num = gets.split(' ').map(&:to_i)
range = start_num..end_num
puts range.sum
