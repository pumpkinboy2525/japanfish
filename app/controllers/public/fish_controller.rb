class Public::FishController < ApplicationController
  def index
    @tag = PrefectureTag.find(params[:prefecture_tag_id])
    @fishtag = FishTag.where(prefecture_tag_id: params[:prefecture_tag_id])
    @fish = Fish.where(id: @fishtag.pluck(:fish_id))
  end
end
