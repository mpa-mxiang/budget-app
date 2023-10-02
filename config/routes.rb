Rails.application.routes.draw do
  root 'home#index'
  resources :entity 
  get '/add_entity', to: 'entity#new', as: 'new_entity'
  resources :group, only: [:new, :create]
end
