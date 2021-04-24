class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :delivery_area
  belongs_to :delivery_day
  belongs_to :delivery_area

  with_options presence: true do
    validates :title
    validates :explain
    validates :category
    validates :status
    validates :delivery_area
    validates :delivery_day
    validates :delivery_pay
    validates :price, numericality: { in: 300..9999999 }, format: { with: /\A[0-9]+\z/ }
  end

  with_options numericality: { other_than: 1 } do
  validates :category_id
  validates :status_id
  validates :delivery_pay_id
  validates :delivery_day_id
  validates :delivery_area_id
  end
end
