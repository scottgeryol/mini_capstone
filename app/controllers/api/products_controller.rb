class Api::ProductsController < ApplicationController
  def product_one
    @product = Product.first
    render "vinyl.json.jb"
  end
end
