class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root, notice: '保存成功'
    else
      flash.now[:alert] = '保存失敗'
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:company_name, :company_link, :application_date, :response_date, :status, :application_medium, :memo)
  end
end
