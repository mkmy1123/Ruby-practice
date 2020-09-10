# 問5 問1のハッシュにキー`:tea`に対応する値がなければ"紅茶はありませんか？"と表示
menu = {coffee: 300, caffe_latte: 400}
if menu[:tea] == nil
  puts "紅茶はありませんか？"
end
