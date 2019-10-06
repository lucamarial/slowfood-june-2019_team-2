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

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to root_path
    else 
      render 'edit'
    end
  end
  
  private
  def product_params
    params.require(:product).permit(:title, :content, :price, :category_id)
  end  
end