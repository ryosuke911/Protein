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
      render :new
    end
  end

  def index
    @categories = Category.all
  end

  

  private
    def category_params
        params.require(:category).permit(:name)
    end

end
