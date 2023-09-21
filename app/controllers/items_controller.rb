class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  # before_action :set_item, only: [:show, :edit, :update, :destroy]
  # before_action :shut_other_users, only: [:edit, :update, :destroy]

  def index
    # 表示順をレビューもしくはツイートが更新された順に変更する。
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
      render :new, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:item_name, :maker, :region_id, :url, :item_image)
  end

  # def set_item
  #   @item = Item.find(params[:id])
  # end

end





def show
end

def edit
end

private



# def shut_other_users
#   if current_user != @item.user
#     redirect_to root_path
#   end
# end

