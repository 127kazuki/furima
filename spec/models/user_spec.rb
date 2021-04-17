require 'rails_helper'
 RSpec.describe User, type: :model do
   describe "ユーザー新規登録" do
     it "nicknameが空だと登録できない" do
      user = User.new(nickname: "", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000", last_name: "田中", first_name: "太郎", last_name_kana: "タナカ", first_name_kana: "タロウ", birthday: "1999-01-01")
   user.valid?
   expect(user.errors.full_messages).to include("Nickname can't be blank")
 end
     it "emailが空では登録できない" do
      user = User.new(nickname: "abc", email: "", password: "00000000", password_confirmation: "00000000", last_name: "田中", first_name: "太郎", last_name_kana: "タナカ", first_name_kana: "タロウ", birthday: "1999-01-01")
   user.valid?
   expect(user.errors.full_messages).to include("Email can't be blank")
 end
 it "passwordが空だと登録できない" do

  user = User.new(nickname: "abc", email: "kkk@gmail.com", password: "", password_confirmation: "00000000", last_name: "田中", first_name: "太郎", last_name_kana: "タナカ", first_name_kana: "タロウ", birthday: "1999-01-01")
  user.valid?
end
 it "last_nameが空だと登録できない" do
  user = User.new(nickname: "abc", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000", last_name: "", first_name: "太郎", last_name_kana: "タナカ", first_name_kana: "タロウ", birthday: "1999-01-01")
   user.valid?
 end
 it "first_nameが空だと登録できない" do
  user = User.new(nickname: "abc", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000", last_name: "田中", first_name: "", last_name_kana: "タナカ", first_name_kana: "タロウ", birthday: "1999-01-01")
   user.valid?
 end
 it "last_name_kanaが空だと登録できない" do
  user = User.new(nickname: "abc", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000", last_name: "田中", first_name: "太郎", last_name_kana: "", first_name_kana: "タロウ", birthday: "1999-01-01")
   user.valid?
 end
 it "first_name_kanaが空だと登録できない" do
  user = User.new(nickname: "abc", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000", last_name: "田中", first_name: "太郎", last_name_kana: "タナカ", first_name_kana: "", birthday: "1999-01-01")
   user.valid?
 end
 it "birthdayが空だと登録できない" do
  user = User.new(nickname: "", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000", last_name: "田中", first_name: "太郎", last_name_kana: "タナカ", first_name_kana: "タロウ", birthday: "")
   user.valid?
 end
   end
 end