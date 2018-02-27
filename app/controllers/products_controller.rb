class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @title = 'Novo Produto'
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

  def edit
    @product = Product.find(params[:id])
    @title = "Produto - #{@product.name}"
  end

  def update
    @product = Product.find(params[:id])
    @product.attributes = params.require(:product).
      permit(:name, :amount, :unit_price, :description, :technical_details)
    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end
end
