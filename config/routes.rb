Rails.application.routes.draw do
  get 'transactions/index'
  get 'transactions/new'
  get 'transactions/create'
  get 'home/index'
  get 'categories/new'
  get 'categories/create'
  get '/add_category', to: 'categories#new', as: 'add_category'
  post '/add_category', to: 'categories#create', as: 'create_category'
  root 'home#index'
  resources :transactions
  get '/add_transaction', to: 'transactions#new', as: 'add_transaction'
end
