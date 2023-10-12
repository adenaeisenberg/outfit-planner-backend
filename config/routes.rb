Rails.application.routes.draw do
  # root "articles#index"
  get "/tops" => "tops#index"
  get "/tops/:id" => "tops#show"
  post "/tops" => "tops#create"
  patch "/tops/:id" => "tops#update"
  delete "/tops/:id" => "tops#destroy"

  get "/bottoms" => "bottoms#index"
  get "/bottoms/:id" => "bottoms#show"
  post "/bottoms" => "bottoms#create"
  patch "/bottoms/:id" => "bottoms#update"
  delete "/bottoms/:id" => "bottoms#destroy"

  get "/outfits" => "outfits#index"
  get "/outfits/:id" => "outfits#show"
  post "/outfits" => "outfits#create"
  patch "/outfits/:id" => "outfits#update"
  delete "/outfits/:id" => "outfits#destroy"

end
