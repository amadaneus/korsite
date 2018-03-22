class Admin::CategoriesController < Admin::ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def new
    @page_title = 'Add Category'
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice]= 'Category Created'
      redirect_to admin_categories: _path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      flash[:notice] = "Category Updated"
      redirect_to admin_categories_path
    else
      render 'new'
    end
  end

  def destroy
    @category.destroy

    flash[:notice] = "Category has been removed"
    redirect_to admin_categories_path
  end

  def index
    if params[:search]
      @categories = Category.search(params[:search]).page(params[:page]).per(5).order('created_at DESC')
    else
      @categories = Category.page(params[:page]).per(5).order('created_at DESC')
    end
  end

  def show
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    @category = Category.find(params[:id])
  end

end
