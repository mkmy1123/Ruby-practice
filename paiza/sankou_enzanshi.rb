
one = gets.to_i
one > 0 ? one = "plus" : one
puts one

two = gets.chomp!
two == "hoge" ? two = "yes" : two
puts two

three = gets.chomp!
three.length == 10 ? three = "ten" : three
puts three

four = gets.chomp!
flag = four.index("x")
flag.nil? ? four = "nothing" : four = flag
puts four

five = gets.chomp
five.length == 5 ? five = "five" : five = five[0,1]
puts five

