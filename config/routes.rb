Rails.application.routes.draw do
  resources :reservations
  devise_for :librarians
  get 'home/index'

  root 'home#index'

  resources :books
  resources :clients
  resources :categories
  resources :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
