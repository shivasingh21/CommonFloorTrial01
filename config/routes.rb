Rails.application.routes.draw do
  root 'home#index'
  resources :properties
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
