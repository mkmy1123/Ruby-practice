# 16章は正規表現(Regexp)クラス

# 1. 「ローカルパート@ドメイン名」という形を $1, $2 に代入
/(.+)@(.+)/ =~ "makimiyagawa@example.com"
p $1
p $2

# 解答
# def get_local_and_domain(str)
#   str =~ /^([^@]+)@(.*)$/
#   localpart = $1
#   domain = $2
#   return [localpart, domain]
# end

p get_local_and_domain("info@example.com")

# 2. gsubメソッドで与えられた文字列を一部変更
str = "正規表現は難しい！ なんて難しいんだ！"
str.gsub!(/難しいんだ/, "簡単なんだ")
str.gsub!(/難しい/, "簡単だ")
p str

# 3. アルファベットとハイフンの文字列を正規表現で加工するメソッドを作成
def word_capitalize(str)
  str.split(/\-/).map{|s| s.capitalize }.join("-")
end

p word_capitalize("aaa-sss")
