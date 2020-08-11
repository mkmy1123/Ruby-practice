# fizzbuzz
N = gets.to_i

N.times do |n|
    n += 1
    if n % 15 == 0
        puts "Fizz Buzz"
    elsif n % 3 == 0
        puts "Fizz"
    elsif n % 5 == 0
        puts "Buzz"
    else
        puts n
    end
end
