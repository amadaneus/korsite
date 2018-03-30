class PostsController < ApplicationController
  layout 'blog'

  def index
    if params[:search]
      @posts = Post.published.search(params[:search]).page(params[:page]).per(5).order('created_at DESC')
    else
      @posts = Post.published.page(params[:page]).per(5).order('created_at DESC')
    end
    @categories = Category.all
    @features = Post.published.featured.all.limit(5)
  end

  def show
    @post = Post.friendly.find(params[:id])
    @categories = Category.all
    @features = Post.published.featured.all.limit(5)
  end

end
