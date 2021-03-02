Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/api/v1/users", to: "api/v1/users#create"
  get "/api/v1/users/:id", to: "api/v1/users#show"
  post "/api/v1/users/:id", to: "api/v1/users#update"
  get "api/v1/logged_in", to: "api/v1/sessions#logged_in"
  delete "api/v1/logout", to: "api/v1/sessions#logout"

  namespace :api do
    namespace :v1 do
      resources :entities
      resources :users
      resources :entity_interactions

      resources :sessions, only: [:create, :current_user]
      resources :users, only: [:create]
    end
  end
end
