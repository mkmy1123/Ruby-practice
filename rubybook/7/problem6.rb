# 問6 品物の値段を返すpriceメソッドをキーワード引数itemで渡し、戻り値を任意のもので返す
def price(item:)
  case item
  when "コーヒー"
    price = 300
  when "カフェラテ"
    price = 400
  end
end
puts price(item: "コーヒー")
puts price(item: "カフェラテ")
