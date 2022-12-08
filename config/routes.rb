Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/kinesthetic', to: 'pages#kinesthetic', as: 'kinesthetic'
  get '/dashboard/calendar', to: 'dashboards#calendar', as: 'calendar'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :blogs, except: %i[edit update delete]

  resources :events, except: %i[index] do
    resources :diaries, only: %i[new create]
  end

  resources :resources, only: %i[index show]
end
