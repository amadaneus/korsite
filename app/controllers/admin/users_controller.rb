class Admin::UsersController < Admin::ApplicationController

  before_action :set_user, only: [:show]

  def index
    if params[:search]
      @users = Users.search(params[:search]).page(params[:page]).per(5).order('created_at DESC')
    else
      @users = Users.page(params[:page]).per(5).order('created_at DESC')
    end
  end

  def show
  end

  private
  def category_params
    params.require(:user).permit(:name, :email)
  end

  def set_category
    @category = Category.find(params[:id])
  end

end
