Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"
  get "/team", to: "pages#team"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :itineraries, only: [:index, :new, :create, :show, :destroy] do
    resources :activities, only: [:index, :new, :create, :destroy]
    resources :itinerary_notes, only: [:new, :create, :destroy]
  end
  resources :itinerary_activity_joins, only: [:index, :show, :destroy] do
    resources :activity_notes, only: [:new, :create]
  end
  resources :activity_notes, only: [:edit, :update, :destroy]
  resources :users, only: [:show, :update, :index]
end
