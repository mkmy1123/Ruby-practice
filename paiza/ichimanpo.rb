# Q:
# 入力として、歩いた距離(km)と歩幅(cm)が与えられるので、
# 1万歩を歩いているかどうかを判定して結果を出力してください。

def km_to_cm(km)
    km * 1000 * 100
end

km, cm = gets.split(' ').map(&:to_i)

answer = km_to_cm(km) / cm

if answer >= 10000
    puts "yes"
else
    puts "no"
end

