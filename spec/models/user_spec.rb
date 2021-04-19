require 'rails_helper'
 RSpec.describe User, type: :model do

  before do
    @user = FactoryBot.build(:user)
  end

   describe "ユーザー新規登録" do

    context 'ユーザ登録ができる時' do
      it "全ての値が正しい" do
        expect(@user).to be_valid
     end
   end

   context 'ユーザ登録ができない時' do
     it "nicknameが空" do
      @user.nickname = ''
      @user.valid?
   expect(@user.errors.full_messages).to include("Nickname can't be blank")
 end
     it "emailが空" do
      @user.email = ''
      @user.valid?
   expect(@user.errors.full_messages).to include("Email can't be blank")
 end
 it "passwordが空" do
  @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
end
 it "last_nameが空" do
      @user.last_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name can't be blank")
 end
 it "first_nameが空" do
  @user.first_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("First name can't be blank")
 end
 it "last_name_kanaが空" do
  @user.last_name_kana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name kana can't be blank")
 end
 it "first_name_kanaが空" do
  @user.first_name_kana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("First name kana can't be blank")
 end
 it "birthdayが空" do
  @user.birthday = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Birthday can't be blank")
 end

 it "emailに@が含まれていない" do
  @user.email = 'testexample'
  @user.valid?
expect(@user.errors.full_messages).to include("Email is invalid")
 end

 it "emailが一意性でない" do
  @user.save
  another_user = FactoryBot.build(:user)
  another_user.email = @user.email
  another_user.valid?
  expect(another_user.errors.full_messages).to include('Email has already been taken')
end

 it "passwordは6文字以上でない" do
  @user.password = '1111a'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
 end

 it "passwordは英数混合でない" do
  @user.password = '111111'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is invalid")
 end

 it "passwordが全角" do
  @user.password = '１１１１１１'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is invalid")
 end

 it "passwordとpassword_comfirmationが同じでない" do
  @user.password = '111111'
  @user.password_confirmation = '111112'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is invalid")
 end

 it "last_nameが漢字・平仮名・カタカナ以外" do
  @user.last_name = 'test'
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name is invalid")
 end

 it "first_nameが漢字・平仮名・カタカナ以外" do
  @user.first_name = 'test'
      @user.valid?
      expect(@user.errors.full_messages).to include("First name is invalid")
 end

 it "last_name_kanaが全角カタカナ以外" do
  @user.last_name_kana = 'ｱｱｱ'
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name kana is invalid")
 end

 it "first_name_kanaが全角カタカナ以外" do
  @user.first_name_kana = 'ｱｱｱ'
      @user.valid?
      expect(@user.errors.full_messages).to include("First name kana is invalid")
 end
 
    end
   end
 end