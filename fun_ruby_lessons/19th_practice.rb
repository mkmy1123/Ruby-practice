# 19章は エンコーディング（Encoding）クラス

# 1. EUC-JPの文字列とShift_JISの文字列を連結してUTF-8で返す
# encoding: utf-8

def to_utf8(str_euc, str_sjis)
  ## encodeメソッドを使ってそれぞれUTF-8に変換してから連結します
  str_euc.encode("UTF-8") + str_sjis.encode("UTF-8")
end

## 以下のように実行します。
str_euc  = "こんにちは".encode("EUC-JP")
str_sjis = "さようなら".encode("Shift_JIS")

puts to_utf8(str_euc, str_sjis)

# 2. Shift_JISでテキストファイルを作成、UTF-8で出力
## Shift_JISでsjis.txtに出力します
File.open("sjis.txt","w:Shift_JIS") do |f|
  f.write("こんにちは")
end

## sjis.txtを開いて、それをUTF-8で出力します
File.open("sjis.txt","r:Shift_JIS") do |f|
  str = f.read
  ## strはShift_JISなので、putsで出力する際にUTF-8にします
  puts str.encode("UTF-8")
end

# 3. ShiftJISとWindowでエンコードの結果が異なるUTF-8の文字列を見つける
str1 = '①'
str2 = '①'

str01 = str1.encode(Encoding::Windows_31J)
p str01.force_encoding("Windows-31J").valid_encoding?

str02 = str1.encode(Encoding::Windows_31J)
p str02.force_encoding("Shift_JIS").valid_encoding?
