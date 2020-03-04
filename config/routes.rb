Rails.application.routes.draw do
  namespace :api do
    get "/all_products" => "products#product_all"
    get "/abbey_road" => "products#product_one"
    get "/phish" => "products#product_two"
    get "/wilco" => "products#product_three"
  end
end
