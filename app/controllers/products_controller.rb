class ProductsController < ApplicationController
  before_action :authenticate_admin! #remove later! puts on landing screen
  def index 
    @products = Product.all
  end
end