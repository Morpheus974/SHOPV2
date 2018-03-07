Rails.application.routes.draw do

  root 'home#index'

  get 'home/login_register'
  get 'home/cart'

  resources :items
  devise_for :users
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
