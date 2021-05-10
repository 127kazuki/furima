class BuyingsController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
  end

  def create
    @buying = BuyingForm.new(buying_params)
  end

  private
  def buying_params
    params.permit(:zip_code, :delivery_area_id, :city, :street, :building, :phone_number )
  end

end
