class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    if @item.save
       redirect_to root_path
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:image,:title,:explain,:category_id,:status_id,:delivery_pay_id,:delivery_day_id,:delivery_area_id,:price).merge(user_id: current_user.id)
  end

end
