def to_hex(r, g, b)
  result = ["#"]
  [r, g, b].each do |color|
    color = color.to_s(16)
    if color.length == 1
      color = "0" + color
    end
    result << color
  end
  result.join
end

def to_ints(color)
  color.slice!("#")
  result = color.scan(/../)
  result.map! { |color| color.to_i(16) }
end
