Rails.application.routes.draw do

  get 'welcome/index'

  #users routes
  get 'signup'  =>  'users#new'
  get "/profile", to: 'users#show'
  resources :users, only: [:create]

  #sessions routes
  get "/login", to: 'sessions#new'
  get "/logout", to: 'sessions#destroy'
  resources :sessions, only: [:create]
  post "session", to: 'sessions#create'

  #men routes
  get 'one' => 'men#one'
  get 'two' => 'men#two'
  get 'men' => 'men#index'
  resources :men

  #women routes
  get 'women' => 'women#index'
  resources :women

  #homepage
  root 'welcome#index'

end
