Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "dashboard", to: "pages#dashboard"
  get "search", to: "pages#search"
  get "profile", to: "pages#profile"
  get "map", to: "pages#map"


  resources :places, only: %i[new create destroy show index edit update] do # edit update
    resources :menu_items, only: %i[new create]
  end

  resources :menu_items, only: %i[new show index edit update destroy] # edit update
  # Defines the root path route ("/")
  # root "articles#index"
end
