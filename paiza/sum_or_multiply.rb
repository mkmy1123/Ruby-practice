# スペース区切りの2つの整数がn行与えられるので、2つの整数をそれぞれ足し合わせて、さらに、その結果をすべての行について足し合わせて出力してください。
# ただし、2つの整数が同じだった場合は、2つの整数を掛け合わせてから、その結果を足し合わせてください。

count = gets.to_i
answer = 0

count.times do
  n = gets.split(' ')
  int1 = n[0].to_i
  int2 = n[1].to_i
  
  if int1 == int2
    answer += (int1 * int2)
  else
    answer += (int1 + int2)
  end
end

puts answer
