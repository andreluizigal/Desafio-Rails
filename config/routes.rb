Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'

  resources :reservations
  resources :librarians
  resources :books
  resources :clients
  resources :categories
  resources :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
