class Public::FishController < ApplicationController
  def index
    @fishes = Fish.all.includes(:fish_tags)
    if params[:prefecture_tag_id].present?
      @fishes = @fishes.where('fish_tags.prefecture_tag_id': params[:prefecture_tag_id])
      @tag = PrefectureTag.find_by_id(params[:prefecture_tag_id])
    end
  end
end
