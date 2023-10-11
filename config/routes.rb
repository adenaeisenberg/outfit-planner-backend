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
end
