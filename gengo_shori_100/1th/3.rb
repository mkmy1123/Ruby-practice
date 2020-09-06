# 04. 元素記号
# “Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.”という文を単語に分解し，1, 5, 6, 7, 8, 9, 15, 16, 19番目の単語は先頭の1文字，それ以外の単語は先頭の2文字を取り出し，取り出した文字列から単語の位置（先頭から何番目の単語か）への連想配列（辞書型もしくはマップ型）を作成せよ．

sentence = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
ary = sentence.split(' ')
result = []

ary.each.with_index(1) do |word, idx|
  case idx
  when 1, 5, 6, 7, 8, 9, 15, 16, 19
    result << {idx => ary[idx - 1][0, 1]}
  else
    result << {idx => ary[idx - 1][0, 2]}
  end
end

p result
