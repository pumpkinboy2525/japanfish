class Public::ShopsController < ApplicationController
  before_action :authenticate_customer!, only: [:comments]
  
  def new
    @shop = Shop.new
  end

  def index
    @tag = PrefectureTag.find(params[:prefecture_tag_id])
    @shoptag = ShopTag.where(prefecture_tag_id: params[:prefecture_tag_id])
    @shop = Shop.where(id: @shoptag.pluck(:shop_id))
  end

  def show
    @shop = Shop.find(params[:id])
  end
  
  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to shops_path(prefecture_tag_id: @shop.prefecture_id)
    else
      render :new
    end
  end
  
  def destroy
  end
  
  def comments
    @shop = Shop.find(params[:id])
    @comment = current_customer.comments.build(shop_id: @shop.id)
    @comments = @shop.comments
  end
  
  private
  
  def shop_params
    params.require(:shop).permit(:shop_name, :shop_introduction, :shop_address, :image, :prefecture_id)
  end
  
end
