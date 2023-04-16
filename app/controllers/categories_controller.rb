class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      @msg= 'カテゴリ名を入力してください。'
      render 'new'
    end
  end

  def index
    @categories = Category.all
  end

  def edit
    @category=Category.find(params[:id])
  end

  def update
    @category=Category.find(params[:id])
    if @category.update(category_params)
      redirect_to categories_path
    else
      @msg= 'カテゴリ名を入力してください。'
      render 'edit'
    end
  end 

  private
    def category_params
        params.require(:category).permit(:name)
    end

end
