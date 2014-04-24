GroceryApp::Application.routes.draw do
 
  root 'groceries#index'

  resources :groceries

end



# Macintosh-2:grocery_app Flanagan$ rake routes
#       Prefix Verb   URI Pattern                   Controller#Action
#         root GET    /                             groceries#index
#    groceries GET    /groceries(.:format)          groceries#index
#              POST   /groceries(.:format)          groceries#create
#  new_grocery GET    /groceries/new(.:format)      groceries#new
# edit_grocery GET    /groceries/:id/edit(.:format) groceries#edit
#      grocery GET    /groceries/:id(.:format)      groceries#show
#              PATCH  /groceries/:id(.:format)      groceries#update
#              PUT    /groceries/:id(.:format)      groceries#update
#              DELETE /groceries/:id(.:format)      groceries#destroy


# assets > application.js  ---- require bootstrap.min   has to be before jquery before turbolinks....copy spencers
# vendor > assets >javascripts > bootstrap.min.js  copy it in that file
# vendor > assets > stylesheets > bootstrip.min.css
