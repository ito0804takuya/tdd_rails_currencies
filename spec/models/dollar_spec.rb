require 'rails_helper'

RSpec.describe Dollar, type: :model do
  
  # テスト（最小テスト単位）
  it "$5 * 2 = $10" do
    # 5ドル
    five_dollar = Dollar.new(amount: 5)

    # 5*2 (下記で、5*2*3にならないようproduct変数に格納)
    product = five_dollar.times(2)
    expect(product.amount).to eq 10

    # 5*3 (5*2*3にならないようproduct変数に格納)
    product = five_dollar.times(3)
    expect(product.amount).to eq 15
  end

  it "$5 = $5" do
    # 三角測量
    expect(Dollar.new(amount: 5).equals(Dollar.new(amount: 5))).to be_truthy
    expect(Dollar.new(amount: 5).equals(Dollar.new(amount: 6))).to be_falsey
  end

end