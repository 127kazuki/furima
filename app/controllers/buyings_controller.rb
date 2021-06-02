class BuyingsController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
    @buying = Buyingform.new
  end


  def create
    @item = Item.find(params[:item_id])
    @buying = Buyingform.new(buying_params)
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
    params.require(:buyingform).permit(:zip_code, :delivery_area_id, :city, :street, :building, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id])
  end

end
