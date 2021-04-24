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
    validates :price
  end

  validates :category_id, :status_id, :delivery_pay_id, :delivery_day_id, :delivery_area_id, numericality: { other_than: 1 } 

end
