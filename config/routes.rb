Rails.application.routes.draw do
  root to: 'static_pages#index'
  
  resources :business_types
  resources :businesses
  
  resources :tasks do
    resources :lists
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
