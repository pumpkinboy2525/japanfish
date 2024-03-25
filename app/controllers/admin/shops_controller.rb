class Admin::ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end
  
  def destroy
    shop = Shop.find(params[:id])
    shop.destroy
    redirect_to admin_shops_path
  end
  
end
