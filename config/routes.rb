Rails.application.routes.draw do
  namespace :api do
    get "/abbey_road" => "products#product_one"
  end
end
