class Buyingform
  include ActiveModel::Model
  attr_accessor :zip_code, :delivery_area_id, :city, :street, :building, :phone_number, :item_id, :user_id

  with_options presence: true do
    validates :zip_code, format: { with: /\A\d{3}[-]\d{4}\z/ } 
    validates :delivery_area_id, numericality: { other_than: 1 }
    validates :city
    validates :street
    validates :phone_number, format: { with: /\A\d{11}\z/ }
  end

  def save
    buying = Buying.create!(item_id: @item_id, user_id: user_id)
    Buyer.create(zip_code: zip_code, delivery_area_id: delivery_area_id, city: city, street: street, building: building,
                 phone_number: phone_number, buying_id: buying.id )
  end
    
    
end