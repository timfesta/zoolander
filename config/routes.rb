Rails.application.routes.draw do

  get 'welcome/index'

  #users routes
  get 'signup'  =>  'users#new'
  # get "/signup", to: 'users#new'
  get "/profile", to: 'users#show'
  resources :users, only: [:create]

  #sessions routes
  get "/login", to: 'sessions#new'
  get "/logout", to: 'sessions#destroy'
  resources :sessions, only: [:create]
  post "session", to: 'sessions#create'

  #men routes
  resources :men

  #women routes
  resources :women

  #homepage
  root 'welcome#index'

end
