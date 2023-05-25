Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/api/v0/markets', to: 'markets#index'
  get '/api/v0/markets/:id', to: 'markets#show' 
  get '/vendors/:id', to: 'vendors#show'
end
