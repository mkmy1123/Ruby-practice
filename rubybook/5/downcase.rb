# 問14 ["aya", "achi", "Tama"]を全て小文字に変換、アルファベット順で ["achi", "aya", "tama"]として表示
p ["aya", "achi", "Tama"].map(&:downcase).sort
