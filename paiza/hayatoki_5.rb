# 任意の文字列 zzzzz が入力されたとき、
# zzzzz
# ^^^^^
# を表示してください。
# （ただし、^ の個数は入力された文字列の長さと同じにしてください。）

words = []
words << gets
words << "^" * words[0].length
puts words
