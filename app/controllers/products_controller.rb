class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "You added #{@product.title} to cart successfully."
    else
      flash[:warning] = "#{@product.title} is in the cart."
    end
    redirect_to @product
  end
end
