Rails.application.routes.draw do
  # devise_for :customers
  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    registrations: 'customers/registrations'
  }
  devise_for :sellers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sellers#index"
  resources :sellers
  
  resources :customers
 
  resources :sellers do
    resources :products
  end
end
