# 14章は文字列(String)クラス

str = "Ruby is an object oriented prigramming language"

# 1. 文字列を各単語で配列にする
str = str.split(' ')

# 2. アルファベット順にソートする
str.sort

# 3. 大文字小文字の区別なしにアルファベット順にソートする
str.sort_by { |s| s.downcase }

# 4. 文字数と頭文字を表示
str = "Ruby is an object oriented prigramming language"

str = str.split(//).group_by(&:itself)
str.each_with_index do |s, i|
  puts "'#{s[0]}': #{"*" * s[1].count}"
end

# 5. 七千百二十三を数字に変換するメソッド
# 難しすぎて断念しました
def kan2num(string)
  digit4 = digit3 = digit2 = digit1 = "0"

  nstring = string.dup
  nstring.gsub!(/一/, "1")
  nstring.gsub!(/二/, "2")
  nstring.gsub!(/三/, "3")
  nstring.gsub!(/四/, "4")
  nstring.gsub!(/五/, "5")
  nstring.gsub!(/六/, "6")
  nstring.gsub!(/七/, "7")
  nstring.gsub!(/八/, "8")
  nstring.gsub!(/九/, "9")

  if nstring =~ /((\d)?千)?((\d)?百)?((\d)?十)?(\d)?$/
    if $1
      digit4 = $2 || "1"
    end
    if $3
      digit3 = $4 || "1"
    end
    if $5
      digit2 = $6 || "1"
    end
    digit1 = $7 || "0"
  end

  return (digit4+digit3+digit2+digit1).to_i
end

p kan2num("七千八百二十三")
p kan2num("千八百二十三")
p kan2num("八百二十三")
p kan2num("百二十三")
p kan2num("百三")
p kan2num("二十三")
p kan2num("十三")
p kan2num("三")
