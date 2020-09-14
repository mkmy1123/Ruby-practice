
def convert_length(int, before, after)
  units = { "m" => 1.00, "ft" => 3.28, "in" => 39.37 }
  (int / units[before] * units[after]).round(2)
end
