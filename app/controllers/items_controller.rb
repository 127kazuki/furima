class ItemsController < ApplicationController

  before_action :authenticate_user!, except: [ :index, :show]
  before_action :iteminfo, only: [:show, :edit, :update, :destroy, :baria_user]
  before_action :baria_user, only: [:edit, :update, :destroy]
  

  def index
    @items = Item.all.order(created_at: :desc)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
       redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

def edit
end

def update
  if
  @item.update(item_params)
  redirect_to root_path
  else
  render :edit
  end
end

def destroy
  @item.destroy
  redirect_to root_path
end

  private
  def item_params
    params.require(:item).permit(:image,:title,:explain,:category_id,:status_id,:delivery_pay_id,:delivery_day_id,:delivery_area_id,:price).merge(user_id: current_user.id)
  end

  def baria_user
    unless @item.user.id == current_user.id
        redirect_to root_path
    end
  end

  def iteminfo
    @item = Item.find(params[:id])
  end

end
