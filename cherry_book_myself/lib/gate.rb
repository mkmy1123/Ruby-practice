class Gate
  # 名前は固定なのでメモリ節約のシンボルの配列で作成
  STATIONS = [:umeda, :juso, :mikuni]
  # 料金は2種類 安い方から書いておく
  FARES = [150, 190]

  # ゲートの名前を受け取る
  def initialize(name)
    @name = name
  end

  # チケットクラスに乗った場所を記憶させる
  def enter(ticket)
    ticket.stamp(@name)
  end

  # チケットクラスのオプジェクトから料金を算出し出られるかどうか真偽値を返す
  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  # 駅の配列から駅間の差分（距離）を出しそこから料金を算出
  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end
end
