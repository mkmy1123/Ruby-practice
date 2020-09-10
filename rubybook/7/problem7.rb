# 問7 上記にキーワード引数sizeを指定、値段を上乗せする
def price(item:, size:)
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
puts price(item: "コーヒー", size: "ショート")
puts price(item: "カフェラテ", size: "ベンティ")
