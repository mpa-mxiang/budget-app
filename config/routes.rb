Rails.application.routes.draw do
  resources :group, only: [:new, :create, :show]
  resources :entity 
  devise_for :users
  # get 'entity/index'
  # get 'entity/new'
  # get 'entity/create'
  # get 'home/index'
  root 'group#index'
  # get '/add_entity', to: 'entity#new', as: 'new_entity_page'
end
