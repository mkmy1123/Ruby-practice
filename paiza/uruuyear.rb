# 西暦が与えられるので、閏年ならYesを、平年ならばNoを出力してください。
year = gets.to_i

def uruu_year?(year)
  case
  when year % 400 == 0
    puts "Yes"
  when year % 100 == 0
    puts "No"
  when year % 4 == 0
    puts "Yes"
  else
    puts "No"
  end
end
