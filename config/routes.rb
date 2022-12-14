Rails.application.routes.draw do
  devise_for :users
  root to: "pages#landing"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  get '/home', to: 'pages#home', as: 'home'
  get '/kinesthetic', to: 'resources#kinesthetic', as: 'kinesthetic'
  get '/audio', to: 'resources#audio', as: 'audio'
  get '/dashboard/calendar', to: 'dashboards#calendar', as: 'calendar'
  get '/dashboard', to: 'dashboards#index', as: 'dashboard'
  get '/dashboard/graph', to: 'dashboards#graph', as: 'graph'
  get '/program', to: 'pages#program', as: 'program'
  get '/video', to: 'resources#video', as: 'video'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :blogs, except: %i[edit update delete]
  resources :profiles, only: %i[new create]

  resources :events, except: %i[index] do
    resources :diaries, only: %i[new create]
  end
end
