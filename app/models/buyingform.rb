class BuyingForm
  include ActiveModel::Model
  attr_accessor :zip_code, :delivery_area_id, :city, :street, :building, :phone_number,

  with_options presence: true do
    validates :zip_code, format: { with: /\A\d{3}[-]\d{4}\z/ } 
    validates :delivery_area_id, numericality: { other_than: 1 }
    validates :city
    validates :street
    validates :phone_number, format: { with: /\A\d{11}\z/ }
  end

  def save
    @buying.save
    @buyer.save
  end
end