Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/dashboard', to: 'dashboards#index', as: 'dashboard'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :blogs, except: %i[edit update delete]

  resources :events, except: %i[index] do
    resources :diaries, only: %i[new create]
  end
end
