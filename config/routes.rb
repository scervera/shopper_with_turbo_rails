Rails.application.routes.draw do
  get 'pages/index'
  root to: "lists#index"
  
  resources :lists do
    resources :items, except: [:index, :show]
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
