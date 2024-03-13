class Admin::FishController < ApplicationController
  def new
    @fish = Fish.new
  end

  def index
    @fish = Fish.all
  end

  def show
    @fish = Fish.find(params[:id])
  end

  def edit
    @fish = Fish.find(params[:id])
  end

  def create
    fish = Fish.new(fish_params)
    if fish.save
      redirect_to admin_fish_index_path(fish), notice: "魚が追加されました"
    else
      render :new
    end
  end
  
  def update
    fish = Fish.find(params[:id])
    fish.update(fish_params)
    redirect_to admin_fish_path(fish.id)
  end

  def destroy
    fish = Fish.find(params[:id])
    fish.destroy
    redirect_to admin_fish_index_path
  end

  private

  def fish_params
    params.require(:fish).permit(:fish_name, :fish_introduction, :image)
  end

end
