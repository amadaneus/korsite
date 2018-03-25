class PostsController < ApplicationController
  layout 'blog'

  def index
    if params[:search]
      @posts = Post.search(params[:search]).page(params[:page]).per(5).order('created_at DESC')
    else
      @posts = Post.page(params[:page]).per(5).order('created_at DESC')
    end
    @categories = Category.all
  end

  def show
    @post = Post.find(params[:id])
    @categories = Category.all
  end

end
