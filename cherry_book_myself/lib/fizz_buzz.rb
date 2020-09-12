# 2章 例題 FizzBuzz

def fizz_buzz(int)
  case
  when int % 15 === 0
    "Fizz Buzz"
  when int % 3 === 0
    "Fizz"
  when int % 5 === 0
    "Buzz"
  else
    int.to_s
  end
end
