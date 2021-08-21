class Money < ApplicationRecord

  # クラスメソッド
  def self.new_dollar(amount:)
    return Dollar.new(amount: amount)
  end

  def self.new_franc(amount:)
    return Franc.new(amount: amount)
  end

  def equals(object)
    return amount === object.amount && object.class == self.class
  end

end
