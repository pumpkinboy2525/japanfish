class Public::CommentsController < ApplicationController
  before_action :authenticate_customer!, only: [:create]

  def create
    @comment = current_customer.comments.build(comment_params)
    @shop = @comment.shop
    if @comment.save
      flash[:notice] = "success"
      redirect_to shop_comments_path(@shop)
    else
      @comments = @shop.comments
      flash.now[:alert] = "failed"
      render "public/shops/comments"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :shop_id)
  end

end
