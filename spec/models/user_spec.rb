require 'rails_helper'
 RSpec.describe User, type: :model do

  before do
    @user = FactoryBot.build(:user)
  end

   describe "ユーザー新規登録" do
     it "nicknameが空だと登録できない" do
      @user.nickname = ''
      @user.valid?
   expect(user.errors.full_messages).to include("Nickname can't be blank")
 end
     it "emailが空では登録できない" do
      @user.email = ''
      @user.valid?
   expect(user.errors.full_messages).to include("Email can't be blank")
 end
 it "passwordが空だと登録できない" do
  @user.password = ''
      @user.valid?
end
 it "last_nameが空だと登録できない" do
      @user.last_name = ''
      @user.valid?
 end
 it "first_nameが空だと登録できない" do
  @user.first_name = ''
      @user.valid?
 end
 it "last_name_kanaが空だと登録できない" do
  @user.last_name_kana = ''
      @user.valid?
 end
 it "first_name_kanaが空だと登録できない" do
  @user.first_name_kana = ''
      @user.valid?
 end
 it "birthdayが空だと登録できない" do
  @user.birthday = ''
      @user.valid?
 end
   end
 end