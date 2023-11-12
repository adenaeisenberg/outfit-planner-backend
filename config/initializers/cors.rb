Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "*"
    resource "*", headers: :any, methods: [:get, :post, :patch, :put, :delete]
  end

  # allow do
  #   origins "https://fonts.googleapis.com"
  #   resource "*", headers: :any, methods: [:get]
  # end
end