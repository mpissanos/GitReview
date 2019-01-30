Rails.application.routes.draw do
  root 'reviews#index'
  
  resources :reviews, only: [:index, :new, :create]
  resources :guitars
  devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: 'callbacks' }
  
end
