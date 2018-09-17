Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :projects, only: [:index, :show]
  resources :projects do
    resources :comments
  end


  get 'dashboard', to: 'dashboard#show'

  namespace :api do
    namespace :v1 do
      get 'geolocate', to: 'geolocate#index'
    end
  end
end
