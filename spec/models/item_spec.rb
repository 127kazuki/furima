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
          @item.image = nil
          @item.valid?
          expect(@item.errors.full_messages).to include("Image can't be blank")
      end

      it "商品名が空欄" do
          @item.title = ''
          @item.valid?
          expect(@item.errors.full_messages).to include("Title can't be blank")
      end

      it "商品名が41文字以上" do
        @item.title = 'あ'*41
        @item.valid?
        expect(@item.errors.full_messages).to include("Title is too long (maximum is 40 characters)")
    end

      it "商品の説明が空欄" do
        @item.explain = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Explain can't be blank")
      end

      it "商品の説明が1001文字以上" do
        @item.explain = 'あ'*1001
        @item.valid?
        expect(@item.errors.full_messages).to include("Explain is too long (maximum is 1000 characters)")
      end

      it "カテゴリーが空欄" do
        @item.category_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end

      it "カテゴリーidが1" do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Category must be other than 1")
      end

      it "商品の状態が空欄" do
        @item.status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Status can't be blank")
      end

      it "商品の状態idが1" do
        @item.status_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Status must be other than 1")
      end

      it "配送料の負担が空欄" do
        @item.delivery_pay_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery pay can't be blank")
      end

      it "配送料の負担idが1" do
        @item.delivery_pay_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery pay must be other than 1")
      end


      it "発送元の地域が空欄" do
        @item.delivery_area_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery area can't be blank")
      end

      it "発送元の地域idが1" do
        @item.delivery_area_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery area must be other than 1")
      end

      it "発送までの日数が空欄" do
        @item.delivery_day_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery day can't be blank")
      end

      it "発送までの日数idが1" do
        @item.delivery_day_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery day must be other than 1")
      end

      it "価格が空欄" do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end

      it "価格が300円未満" do
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
      end

      it "価格が10,000,000円以上" do
        @item.price = 10000000
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be less than or equal to 9999999")
      end

      it "価格が半角数字以外" do
        @item.price = 'テスト'
        @item.valid?
        expect(@item.errors.full_messages).to include("Price is not a number")
      end

    end


  end
end
