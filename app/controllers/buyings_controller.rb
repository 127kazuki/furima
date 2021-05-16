class BuyingsController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
    @buying = Buyingform.new(buying_params)
  end


  def create
    @item = Item.find(params[:item_id])
    @buying = Buyingform.new
    if 
      @buying.valid?
      @buying.save
      redirect_to root_path
    else
      render :index
    end
  end


  private
  def buying_params
    params.permit(:zip_code, :delivery_area_id, :city, :street, :building, :phone_number, :card_num, :exe_month, :exe_year, :security_code, :authenticity_token, :commit, :item_id
    )
  end

end
