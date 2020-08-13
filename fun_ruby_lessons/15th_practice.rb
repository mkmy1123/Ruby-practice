# 15章はハッシュ(Hash)クラス

# 1. 曜日を定義したハッシュを作成する
wday = { sunday: "日曜日", monday: "月曜日", tuesday: "火曜日",
         wednesday: "水曜日", thursday: "木曜日",
         friday: "金曜日", saturday: "土曜日" }
p wday

# 2. 曜日のペア数を表示させる
p wday.length

# 3. 文字列としてキーとバリューを表示させる
wday.each do |key, value|
  puts "「#{key}」は#{value}のことです。"
end

# 4. 空白かタブ文字で与えられる文字列をハッシュに変換するメソッドを作成
def str2hash(str)
  hash = Hash.new()
  array = str.split(/\s+/)
  while key = array.shift
    value = array.shift
    hash[key] = value
  end
  return hash
end

p str2hash("bule 青 white 白\nred 赤")
