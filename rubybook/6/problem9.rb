# 問9 問8を書き換えて値が350以上のものだけ表示
menu = { "コーヒー" =>300, "カフェラテ" => 400 }
menu.each do |key, value|
  puts "#{key} - #{value}円" if value >= 350
end
