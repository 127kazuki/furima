require 'rails_helper'

RSpec.describe Item, type: :model do

  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品機能' do
    context '商品出品ができる時' do

      it "全ての値が正しい" do
        expect(@item).to be_valid
      end

    end

    context '商品出品ができない時' do

      it "出品画像が空欄" do
      end

      it "商品名が空欄" do
      end

      it "商品の説明が空欄" do
      end

      it "カテゴリーが空欄" do
      end

      it "商品の状態が空欄" do
      end

      it "配送料の負担が空欄" do
      end

      it "発送元の地域が空欄" do
      end

      it "発送までの日数が空欄" do
      end

      it "価格が空欄" do
      end

      it "価格が300円未満" do
      end

      it "価格が10,000,000円以上" do
      end

      it "価格が半角数字以外" do
      end

    end


  end
end
