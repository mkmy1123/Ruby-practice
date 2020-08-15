# 17章はIO(Input/Output)クラス

# 1. テキストファイルからデータを読み込んで情報を出力
text = open("textfile.txt")
i = 0
text.each_line do |line|
  i += 1
end
p i # 行数

body = File.read("textfile.txt")
p body.split(' ').count # 単語数

text = open("textfile.txt")
i = 0
text.each_char do |chr|
  i += 1
end
p i # 文字数

# 解答 この書き方できたら応用が効く
# def wc(file)
#   nline = nword = nchar = 0
#   File.open(file){|io|
#     io.each{|line|
#       words = line.split(/\s+/).reject{|w| w.empty? }
#       nline += 1
#       nword += words.length
#       nchar += line.length
#     }
#   }
#   puts "lines=#{nline} words=#{nword} chars=#{nchar}"
# end
# wc(__FILE__)

# 2. テキストファイルを書き換える
text = open("textfile.txt")
result = []
text.each_line do |line|
  result << line
end
first = result.first.chomp!
last = result.last.chomp!
File.write("textfile2.txt", result.reverse) # 逆順
File.write("textfile2.txt", first) # 最初の行のみ
File.write("textfile2.txt", last) # 最後の行のみ

# 解答 この書き方できたら応用が効く
# def reverse(input)
#   open(input, "r+") do |f|
#     lines = f.readlines
#     f.rewind
#     f.truncate(0)
#     f.write lines.reverse.join()
#   end
# end
# reverse(ARGV[0])

# 3. unixコマンドのtailと同じものを作る
def tail(line, file)
  text = open("textfile.txt")
  result = []
  text.each_line do |line|
    line.chomp!
    result << line
  end
  i = 0
  result.map do |r|
    puts r if i >= line
    i += 1
  end 
end

tail(4, "textfile.txt")

# 解答 なんか惜しい
# def tail(lines, file)
#   queue = Array.new
#   open(file) do |io|
#     while line = io.gets
#       queue.push(line)
#       if queue.size > lines
#         queue.shift
#       end
#     end
#   end
#   queue.each{|line| print line }
# end

# puts "==="
# tail(10, __FILE__)

# puts "==="
# tail(3, __FILE__)
