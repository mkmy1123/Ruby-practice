# 問9 継承を試す
class Item
  def name
    @name
  end

  def name=(text)
    @name = text
  end
end

class Food < Item
end

obj = Food.new
obj.name = "チーズケーキ"
p obj.name
