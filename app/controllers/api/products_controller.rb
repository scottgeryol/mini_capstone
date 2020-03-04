class Api::ProductsController < ApplicationController
  def product_all
    @products = Product.all
    render "all_products.json.jb"
  end

  def product_one
    @product = Product.first
    render "vinyl.json.jb"
  end

  def product_two
    @product_2 = Product.second
    render "vinyl_2.json.jb"
  end

  def product_three
    @product_3 = Product.last
    render "vinyl_3.json.jb"
  end
end
