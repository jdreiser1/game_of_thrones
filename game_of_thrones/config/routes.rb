Rails.application.routes.draw do
  devise_for :users
  root 'houses#index'
  resources :houses
  resources :characters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
