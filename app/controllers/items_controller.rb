class ItemsController < ApplicationController
  def index
  end

  private

  def item_params
    params.require(:item).permit(:title, :explain, :price, :image).merge(user_id: current_user.id)
  end

end
