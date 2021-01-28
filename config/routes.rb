Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/movies" => "movies#index"
    get "/movies/:id" => "movies#show"
    post "/movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"

    get "/actors" => "actors#index"
    get "/actors/:id" => "actors#show"
    post "/actors" => "actors#create"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    
    # get "choose_actor_path" => "actors#choose_actor_action"
    # get "choose_actor_path/:actor" => "actors#choose_actor_action"
    # get "actor_path" => "actors#single_actor_action"
  end
end
