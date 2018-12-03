Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :comments
      resources :landmarks
      resources :recommendations
      resources :users
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
