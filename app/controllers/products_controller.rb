class ProductsController < ApplicationController

  def index
    # uses MODEL
    @products = Product.all.order(created_at: :desc)
    # VIEW is implicit -> render :index
    # VIEW is located in views folder views/products/index.html.erb
  end

  def show
    @product = Product.find params[:id]
  end

end
