class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    if params[:search]
      @products = @products.where("name ILIKE ?", "%#{params[:search]}%")
    end

    if params[:discounted]
      @products = @products.where("price < 30.0")
    end

    if params[:sort] == "price" && params[:sort_order] == "asc"
      @products = @products.order(price: :asc)
    elsif params[:sort] == "price" && params[:sort_order] == "desc"
      @products = @products.order(price: :desc)
    else
      @products = @products.order(:id => :asc)
    end

    render "index.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
      color: params[:color],
      weight: params[:weight],
      tracklist: params[:tracklist],
      genre: params[:genre],
      size: params[:size],
      speed: params[:speed],
      year: params[:year],
      label: params[:label],
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.color = params[:color] || @product.color
    @product.weight = params[:weight] || @product.weight
    @product.tracklist = params[:tracklist] || @product.tracklist
    @product.genre = params[:genre] || @product.genre
    @product.size = params[:size] || @product.size
    @product.speed = params[:size] || @product.speed
    @product.year = params[:year] || @product.year
    @product.label = params[:label] || @product.label

    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Product destroyed successfully." }
  end
end
