Rails.application.routes.draw do
  resources :group, only: [:new, :create]
end
