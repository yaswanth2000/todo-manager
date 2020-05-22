Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



# RESOURCE
#Todo is a resource
# - list of resources can be seen:index
# - single resource can be seen: show
# - create a new resource




get "todos", to: "todos#index"
get "todos/create", to:"todos#create"
get "todos/:id", to: "todos#show"
end
