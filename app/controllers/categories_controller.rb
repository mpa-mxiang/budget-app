class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:success] = 'Category created successfully.'
      redirect_to root_path 
    else
      flash.now[:error] = 'Failed to create the category.'
      render :new
    end
  end

  private

def category_params
  params.require(:category).permit(:name, :category_type)
end
end
