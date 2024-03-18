class HomesController < ApplicationController
  def top
    @tags = PrefectureTag.all
  end

  def about
  end
end
