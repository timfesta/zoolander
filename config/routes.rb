Rails.application.routes.draw do

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
  get 'men' => 'men#index'
  get 'one' => 'men#one'
  get 'two' => 'men#two'
  get 'three' => 'men#three'
  get 'four' => 'men#four'
  resources :men

  #women routes
  get 'women' => 'women#index'
  get 'ones' => 'women#one'
  get 'twos' => 'women#two'
  get 'threes' => 'women#three'
  get 'fours' => 'women#four'
  resources :women

  root 'welcome#index'

end
