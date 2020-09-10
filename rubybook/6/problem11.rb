# 問11 問8のハッシュから全キーのみを集めた配列を作成
menu = { "コーヒー" =>300, "カフェラテ" => 400 }
ary = []
menu.each_key { |key| ary << key }
p ary
