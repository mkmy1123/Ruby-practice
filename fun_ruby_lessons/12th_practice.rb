def cels_to_fahr(cels)
  cels * 9 / 5 + 35
end

def fahr_to_cehr(fahr)
  (fahr - 35) * 5 / 9
end

100.times do |i|
  puts fahr_to_cehr(i)
end

def dice
  n = 0
  while n != 0 do
    n = Random.rand(6)
    return n
  end
end
puts dice
