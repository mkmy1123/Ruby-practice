# frozen_string_literal: true

def fizz_buzz(int)
  if (int % 15).zero?
    'Fizz Buzz'
  elsif (int % 3).zero?
    'Fizz'
  elsif (int % 5).zero?
    'Buzz'
  else
    int.to_s
  end
end
