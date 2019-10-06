class ProductsController < ApplicationController
  def index 
    @categories = Category.all
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end
  
  private
  def product_params
    params.require(:product).permit(:title, :content, :price, :category_id)
  end  
end