# 問6  "商品を扱うオブジェクト"と表示させるinitializeメソッドをItemクラスに定義して呼び出す
class Item
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

obj1 = Item.new("マフィン")
obj2 = Item.new("スコーン")
puts obj1.name
puts obj2.name
