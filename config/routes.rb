Rails.application.routes.draw do
  devise_for :users

  resources :group do 
    resources :entity
  end

  root 'group#index'
end