Rails.application.routes.draw do
  # root "articles#index"
  get "/tops" => "tops#index"
end
