Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :index, :create, :update]
      post '/users/login', to: 'users#login'
      resources :filters, only: [:show, :index, :create, :destroy]
      resources :save_filters, only: [:show, :index, :create, :destroy]
      
    end
  end
end
