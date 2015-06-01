# == Route Map
#
#       Prefix Verb   URI Pattern                  Controller#Action
#  session_new GET    /session/new(.:format)       session#new
#         root GET    /                            pages#landing
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PATCH  /users/:id(.:format)         users#update
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
#     palettes GET    /palettes(.:format)          palettes#index
#              POST   /palettes(.:format)          palettes#create
#  new_palette GET    /palettes/new(.:format)      palettes#new
# edit_palette GET    /palettes/:id/edit(.:format) palettes#edit
#      palette GET    /palettes/:id(.:format)      palettes#show
#              PATCH  /palettes/:id(.:format)      palettes#update
#              PUT    /palettes/:id(.:format)      palettes#update
#              DELETE /palettes/:id(.:format)      palettes#destroy
#        login GET    /login(.:format)             session#new
#              POST   /login(.:format)             session#create
#              DELETE /login(.:format)             session#destroy
#

Rails.application.routes.draw do

  get 'session/new'

  root :to => 'pages#landing'
  resources :users, :palettes

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete 'login' => 'session#destroy'

end
