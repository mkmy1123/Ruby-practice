# frozen_string_literal: true

def to_hex(red, green, blue)
  result = ['#']
  [red, green, blue].each do |color|
    color = color.to_s(16)
    color = '0' + color if color.length == 1
    result << color
  end
  result.join
end

def to_ints(color)
  color.slice!('#')
  result = color.scan(/../)
  result.map! { |hex| hex.to_i(16) }
end
