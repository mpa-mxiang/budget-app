Rails.application.routes.draw do
  get 'entity/index'
  get 'entity/new'
  get 'entity/create'
  get 'home/index'
  root 'group#index'
  resources :entity 
  get '/add_entity', to: 'entity#new', as: 'new_entity_page'
  resources :group, only: [:new, :create]
end
