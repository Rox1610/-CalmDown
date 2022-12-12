Rails.application.routes.draw do
  devise_for :users
  root to: "pages#landing"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  get '/home', to: 'pages#home', as: 'home'
  get '/kinesthetic', to: 'pages#kinesthetic', as: 'kinesthetic'
  get '/audio', to: 'resources#audio', as: 'audio'
  get '/dashboard/calendar', to: 'dashboards#calendar', as: 'calendar'
  get '/dashboard', to: 'dashboards#index', as: 'dashboard'
  get '/program', to: 'pages#program', as: 'program'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :blogs, except: %i[edit update delete]
  resources :profiles, only: %i[new create]

  resources :events, except: %i[index] do
    resources :diaries, only: %i[new create]
  end

  resources :resources, only: %i[index show]


end
