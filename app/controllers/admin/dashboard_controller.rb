class Admin::DashboardController < ApplicationController
  def show
    @categories = Category.count(params[:id])
    @products = Product.count(params[:id])
  end
end
