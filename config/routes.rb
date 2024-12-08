Rails.application.routes.draw do
  get 'articles/index'
  root 'bikes#index'
  resources :categories, only: [:index, :show]
  resources :orders, only: [:index]
  resources :reviews, only: [:index]
  resources :bikes do
    resources :orders, only: [:new, :create]
    resources :reviews, only: [:index, :new, :create]
  end
  get '/contact', to: 'contacts#new', as: 'contact'
  post '/contact', to: 'contacts#create'
  get '/about', to: 'pages#about'
  get '/orders/:id/confirmation', to: 'orders#confirmation', as: 'order_confirmation'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
