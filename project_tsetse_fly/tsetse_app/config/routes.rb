TsetseApp::Application.routes.draw do
  resources :users, :routes, :stations, :sessions

  root to: "routes#index"
  # root "routes#index"

  get '/signup', to: 'users#new'
  delete '/signout', to: 'sessions#destroy'
  get '/signin', to: 'sessions#new'
end


# Macintosh-2:tsetse_app Flanagan$ rake routes
#       Prefix Verb   URI Pattern                  Controller#Action
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PATCH  /users/:id(.:format)         users#update
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
#       routes GET    /routes(.:format)            routes#index
#              POST   /routes(.:format)            routes#create
#    new_route GET    /routes/new(.:format)        routes#new
#   edit_route GET    /routes/:id/edit(.:format)   routes#edit
#        route GET    /routes/:id(.:format)        routes#show
#              PATCH  /routes/:id(.:format)        routes#update
#              PUT    /routes/:id(.:format)        routes#update
#              DELETE /routes/:id(.:format)        routes#destroy
#     stations GET    /stations(.:format)          stations#index
#              POST   /stations(.:format)          stations#create
#  new_station GET    /stations/new(.:format)      stations#new
# edit_station GET    /stations/:id/edit(.:format) stations#edit
#      station GET    /stations/:id(.:format)      stations#show
#              PATCH  /stations/:id(.:format)      stations#update
#              PUT    /stations/:id(.:format)      stations#update
#              DELETE /stations/:id(.:format)      stations#destroy
#     sessions GET    /sessions(.:format)          sessions#index
#              POST   /sessions(.:format)          sessions#create
#  new_session GET    /sessions/new(.:format)      sessions#new
# edit_session GET    /sessions/:id/edit(.:format) sessions#edit
#      session GET    /sessions/:id(.:format)      sessions#show
#              PATCH  /sessions/:id(.:format)      sessions#update
#              PUT    /sessions/:id(.:format)      sessions#update
#              DELETE /sessions/:id(.:format)      sessions#destroy
#         root GET    /                            routes#index
#       signup GET    /signup(.:format)            users#new
#      signout DELETE /signout(.:format)           sessions#destroy
#       signin GET    /signin(.:format)            sessions#new