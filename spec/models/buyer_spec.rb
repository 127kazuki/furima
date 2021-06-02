require 'rails_helper'

RSpec.describe Buyer, type: :model do

  before do
    @buyer = FactoryBot.build(:buyer)
  end

  describe '商品購入機能' do
    context '商品購入ができる時' do

      it "全ての値が正しい" do
        expect(@buyer).to be_valid
      end

    end
    
end
