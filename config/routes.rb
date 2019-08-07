Rails.application.routes.draw do
  
  resources :bussinesses
  resources :bussiness_types
  root to: 'static_pages#index'
  
  resources :tasks do
    resources :lists
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
