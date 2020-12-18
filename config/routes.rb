Rails.application.routes.draw do
  get 'favourites/update'
  root 'home#index'

  resources :properties do
    resources :reviews
  end

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  resources :categories, except: [:show]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
