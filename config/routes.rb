Rails.application.routes.draw do
  resources :accounts
  devise_for :users
  resources :transfers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "accounts#index"
end
