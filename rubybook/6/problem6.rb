# 問6 問1のハッシュでキー`:caffe_latte`の値が500以下であれば"カフェラテください"と表示
menu = {coffee: 300, caffe_latte: 400}
if menu[:caffe_latte] <= 500
  puts "カフェラテください"
end
