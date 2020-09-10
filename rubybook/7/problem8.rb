# 問8 sizeのデフォルト値をショートと設定する
def price(item:, size: "ショート")
  case item
  when "コーヒー"
    price = 300
  when "カフェラテ"
    price = 400
  end
  case size
  when "ショート"
    price
  when "トール"
    price += 50
  when "ベンティ"
    price += 100
  end
end
puts price(item: "コーヒー")
puts price(item: "カフェラテ", size: "トール")