Rails.application.routes.draw do
  get 'itinerary_notes/new'
  get 'itinerary_notes/create'
  get 'itinerary_notes/edit'
  get 'itinerary_notes/update'
  get 'itinerary_notes/destroy'
  get 'activities/show'
  get 'activities/destroy'
  get 'itineraries/index'
  get 'itineraries/new'
  get 'itineraries/create'
  get 'itineraries/show'
  get 'itineraries/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
