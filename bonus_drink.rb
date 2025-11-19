class BonusDrink
  def self.total_count_for(amount)
    if amount.zero?
      0
    elsif amount.odd?                # 奇数の時、飲める本数は最初の本数の1.5倍（小数点以下切り捨て）
      3 * amount / 2
    elsif amoount.even?              # 偶数は、ひとつ前の奇数の飲める本数＋1本（0以外）
      3 * (amount - 1 ) / 2 + 1
    end
  end
end

puts BonusDrink.total_count_for(100)  # 100本購入した場合、トータルで何本飲めるか求める
