# 問8 `menu = { "コーヒー" =>300  , "カフェラテ" => 400 }`の全組を「コーヒー - 300円」の形で表示
menu = { "コーヒー" =>300, "カフェラテ" => 400 }
menu.each do |key, value|
  puts "#{key} - #{value}円"
end
