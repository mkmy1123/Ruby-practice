class Ticket
  # 料金と乗った場所はGateクラスから読みたいので読み取り設定しておく
  attr_reader :fare, :stamped_at

  # 買った金額を覚えさせる
  def initialize(fare)
    @fare = fare
  end

  # 乗り始めた場所を記憶させる
  def stamp(name)
    @stamped_at = name
  end
end
