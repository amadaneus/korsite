class Admin::PostsController < Admin::ApplicationController
  load_and_authorize_resource
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:notice]= 'Post Created'
      redirect_to admin_posts_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:notice] = "Post Updated"
      redirect_to admin_posts_path
    else
      render 'new'
    end
  end

  def destroy
    @post.destroy

    flash[:notice] = "Post has been removed"
    redirect_to admin_posts_path
  end

  def index
    if params[:search]
      @posts = Post.search(params[:search]).page(params[:page]).per(5).order('created_at DESC')
    else
      @posts = Post.page(params[:page]).per(5).order('created_at DESC')
    end
  end

  def show
  end

  private
  def post_params
    params.require(:post).permit(:title, :category_id, :user_id, :tags, :image, :body)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
