Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :blogs, except: %i[edit update delete]
  get "home", to: "pages#home"
  resources :profiles, only: %i[new create]
  get "test", to: "pages#test"
end
