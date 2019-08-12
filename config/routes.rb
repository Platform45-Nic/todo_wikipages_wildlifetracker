Rails.application.routes.draw do
  root to: 'static_pages#index'
  
  resources :business_types
  resources :businesses
  
  resources :tasks do
    resources :lists
  end
  
  resources :animals
  resources :sightings
  resources :regions

end
