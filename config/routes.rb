Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/profile', to: 'profiles#index', as: 'profile'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :events, except: %i[index]
end
