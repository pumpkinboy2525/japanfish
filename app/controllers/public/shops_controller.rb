class Public::ShopsController < ApplicationController
  def new
    @shop = Shop.new
  end

  def index
  end

  def show
    @shop = Shop.find(params[:id])
  end
  
  def create
    shop = Shop.new(shop_params)
    if shop.save
      redirect_to shops_path
    else
      render :new
    end
  end
  
  def destroy
  end
  
  private
  
  def shop_params
    params.require(:shop).permit(:shop_name, :shop_introduction, :shop_address, :image, prefecture_tag_ids:[])
  end
  
end
