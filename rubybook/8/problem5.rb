# 問5 Itemクラスを定義、インスタンス変数の設定取得を行う(@name = "チーズケーキ")
class Item
  def name=text
    @name = text
  end

  def name
    @name
  end
end

cheese = Item.new
cheese.name = "チーズケーキ"
p cheese.name
