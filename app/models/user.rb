class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         

         with_options presence: true do
          PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
          EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
          validates :nickname
          validates :email, uniqueness: true, format: { with: EMAIL_REGEX }
          validates :password, confirmation: true, length: { minimum: 6 }, format: { with: PASSWORD_REGEX }
          validates :last_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ } 
          validates :first_name,format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
          validates :last_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
          validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
          validates :birthday
         end

  has_many :items
end