class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    # render plain: params[:category].inspect
    @category = Category.new(category_params)
    @category.save

    if @category.save
      redirect_to categories_path(@category)
    else
      render 'categories/new'
    end
  end

  def show
    @category = Category.find(params[:id])
  end
  #
  # def edit
  #   # set_category
  # end
  #
  # def update
  # end
  #
  # def destroy
  # end
  #
  # def set_category
  #   @categorie = Category.find(params[:id])
  # end
  #
  def category_params
    params.require(:category).permit(:produces, :model, :year, :average_price, :equipment, :notes )
  end
end
