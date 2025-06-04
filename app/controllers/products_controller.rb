class ProductsController < ApplicationController
  before_action :find_product, except: %i[index new create]
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product created succesfully."
    else
      flash[:alert] = "Product could not be created. #{@product.errors.full_messages.to_sentence}"
    end
    redirect_to products_path
  end

  def edit
  end

  def show
  end

  def update
    if @product.update(product_params)
      flash[:notice] = "Product updated succesfully."
    else
      flash[:alert] = "Product could not be updated. #{@product.errors.full_messages.to_sentence}"
    end
    redirect_to products_path
  end

  def destroy
    @product.destroy
    flash[:notice] = "Product deleted succesfully."
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:title, :ingredients, :category, :product_picture)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
