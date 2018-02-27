class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params.require(:product).
      permit(:name, :amount, :unit_price, :description, :technical_details))
    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path }
      else
        format.html { render :new }
      end
    end
  end
end
