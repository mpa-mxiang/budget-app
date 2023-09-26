Rails.application.routes.draw do
  get 'categories/new'
  get 'categories/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/add_category', to: 'categories#new', as: 'new_category'
  post '/add_category', to: 'categories#create', as: 'create_category'
  # Defines the root path route ("/")
  # root "articles#index"
end
