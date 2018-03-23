class Admin::DashboardsController < Admin::ApplicationController

  def dashboard
    @users = User.all
    @posts = Post.all
    @categories = Category.all
  end

end
