class CategoriesController < ApplicationController
  layout 'blog'

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

end
