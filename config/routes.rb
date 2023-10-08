Rails.application.routes.draw do
  resources :group, only: [:new, :create, :show] do 
    resources :entity
    member do
      get 'sum'
    end
  end
  resources :entity, only: [:index]
  devise_for :users
  root 'group#index'
end
