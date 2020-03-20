class Api::CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted",
    )
    if carted_product.save
      render json: { message: "Products added successfully." }
    else
      render json: {}
    end
  end

  def index
    @all_carted_products = CartedProducts.all
    render "index.json.jb"
  end
end
