# 問5 diceメソッドで1が出たらもう一回と表示させて再度挑戦させるように変更
def dice
  int = [1, 2, 3, 4, 5, 6].sample
  if int == 1
    puts "もう一回"
    int = [1, 2, 3, 4, 5, 6].sample
  else
    int
  end
end
puts dice
