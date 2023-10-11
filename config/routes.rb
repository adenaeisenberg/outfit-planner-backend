Rails.application.routes.draw do
  # root "articles#index"
  get "/tops" => "tops#index"
  get "/tops:id" => "tops#show"
  post "/tops" => "tops#create"
  patch "/tops/:id" => "tops#update"
end
