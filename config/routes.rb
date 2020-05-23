Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



# RESOURCE
#Todo is a resource
# - list of resources can be seen:index
# - single resource can be seen: show
# - create a new resource




# get "todos", to: "todos#index"
# post "todos", to:"todos#create"
# get "todos/:id", to: "todos#show"
resources :todos
resources :users
post "users/login",to: "users#login"
end
