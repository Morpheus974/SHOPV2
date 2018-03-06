Rails.application.routes.draw do
  get 'items/index'

  get 'items/show'

  devise_for :users
  get 'home/index'
  root 'items#index'
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
