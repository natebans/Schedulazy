Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/home/test_search', to: 'pages#test_search', as: 'test_search'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :itineraries, only: [:index, :new, :create, :show, :destroy] do
    resources :activities, only: [:index, :new, :create]
    resources :itinerary_notes, only: [:new, :create]
  end
  resources :activities, only: [:index, :show, :destroy] do
    resources :activity_notes, only: [:new, :create]
  end
  resources :itinerary_notes, only: [:edit, :update, :destroy]
  resources :activity_notes, only: [:edit, :update, :destroy]
  resources :users, only: [:show, :update, :index]
end
