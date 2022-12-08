Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/kinesthetic', to: 'pages#kinesthetic', as: 'kinesthetic'
  get '/dashboard', to: 'dashboards#index', as: 'dashboard'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :events, except: %i[index]
  resources :blogs, except: %i[edit update delete]
end
