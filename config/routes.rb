Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/kinesthetic', to: 'pages#kinesthetic', as: 'kinesthetic'
  get '/dashboard', to: 'dashboards#index', as: 'dashboard'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :blogs, except: %i[edit update delete]
<<<<<<< HEAD
  get "home", to: "pages#home"
  resources :profiles, only: %i[new create]
  get "test", to: "pages#test"
=======

  resources :events, except: %i[index] do
    resources :diaries, only: %i[new create]
  end

  resources :resources, only: %i[index show]
>>>>>>> d52236c6d4792ad0f54af152a3bb808474b0ff05
end
