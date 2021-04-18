class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         

         with_options presence: true do
          PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
          EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
          validates :nickname
          validates :email, uniqueness: true, format: { with: EMAIL_REGEX }
          validates :password, confirmation: true, length: { minimum: 6 }, format: { with: PASSWORD_REGEX }
          validates :last_name
          validates :first_name
          validates :last_name_kana
          validates :first_name_kana
          validates :birthday
         end
end