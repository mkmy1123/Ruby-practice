# 1行目の文字が、2行目の文字列の中に何個出現するかをカウントして出力してください。

flag = gets.chomp!
word = gets

p word.split(//).grep(flag).count
