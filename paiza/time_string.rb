# パイザ君の家の前では毎週日曜日に工事が行われます。この先 N 週間、工事が日曜日の何時に始まり、どれくらいの時間続くのかは分かっています。パイザ君は工事の間は家を離れようと思っているので、それぞれの日に工事が何時に終わるのかを知りたいと思いました。
# 工事が N 週間続くとして、各週日曜日の工事が始まる時刻と、工事が何時間何分続くのかに関する情報が与えられるので、工事が終わる時刻を 00:00 から 23:59 までの 24 時間表記で出力してください（ここで「工事が終わる時刻」とは、工事が h 時間 m 分続くとした場合、工事が始まった時刻の h 時間 m 分後を指します）。

count = gets.to_i
answer = []

count.times do
  time, hour, minute = gets.split(' ')
  hour = hour.to_i
  minute = minute.to_i
  time = time.split(':')

  if (time[1].to_i + minute) >= 60
    minute = time[1].to_i + minute - 60
    hour += 1
  else
    minute = time[1].to_i + minute
  end

  if (time[0].to_i + hour) >= 24
    hour = time[0].to_i + hour - 24
  else
    hour = time[0].to_i + hour
  end

  if hour < 10
    hour = '0' + hour.to_s
  else
    hour = hour.to_s
  end
  
  if minute < 10
    minute = '0' + minute.to_s
  else
    minute = minute.to_s
  end

  answer << hour + ':' + minute
end

puts answer
