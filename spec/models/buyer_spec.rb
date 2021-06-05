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

    context '商品購入ができない時' do

      it "郵便番号が空" do
        
      end
      it "郵便番号にハイフンが無い" do
        
      end
      it "都道府県が空" do
        
      end
      it "市区町村が空" do
        
      end
      it "番地が空" do
        
      end
      it "電話番号が空" do
        
      end
      it "電話番号が10桁以下" do
        
      end
      it "電話番号が12桁以上" do
        
      end
    end
  end


    
end
