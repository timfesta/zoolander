Rails.application.routes.draw do

  get 'welcome/index'

  #users routes
  get "/signup", to: 'users#new'
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


#    Prefix Verb   URI Pattern               Controller#Action
#     signup GET    /signup(.:format)         users#new
#     profie GET    /profie(.:format)         users#show
#      users POST   /users(.:format)          users#create
#      login GET    /login(.:format)          sessions#new
#     logout GET    /logout(.:format)         sessions#destroy
#   sessions POST   /sessions(.:format)       sessions#create
#        men GET    /men(.:format)            men#index
#            POST   /men(.:format)            men#create
#    new_man GET    /men/new(.:format)        men#new
#   edit_man GET    /men/:id/edit(.:format)   men#edit
#        man GET    /men/:id(.:format)        men#show
#            PATCH  /men/:id(.:format)        men#update
#            PUT    /men/:id(.:format)        men#update
#            DELETE /men/:id(.:format)        men#destroy
#      women GET    /women(.:format)          women#index
#            POST   /women(.:format)          women#create
#  new_woman GET    /women/new(.:format)      women#new
# edit_woman GET    /women/:id/edit(.:format) women#edit
#      woman GET    /women/:id(.:format)      women#show
#            PATCH  /women/:id(.:format)      women#update
#            PUT    /women/:id(.:format)      women#update
#            DELETE /women/:id(.:format)      women#destroy