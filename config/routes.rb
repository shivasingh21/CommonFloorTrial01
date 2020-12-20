Rails.application.routes.draw do
  get 'favourites/update'
  root 'home#index'

  resources :properties do
    member do
      get :approve
    end
    # collection do
    #   patch 'approve'
    # end
    resources :reviews
  end

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  resources :categories, except: [:show]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'properties/approve_property'
  # post 'properties/:id', to: 'properties#approve'
# delete 'sign_out', to: "sessions#destroy", as: 'sign_out'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
