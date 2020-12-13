Rails.application.routes.draw do
  root 'home#index'
  resources :properties
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
