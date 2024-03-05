Rails.application.routes.draw do
  # get 'chats/show'
  resources :chats, only: [:show]

  # get 'farmers/index'
  # get 'farmers/show'
  # get 'farmers/profile'
  resources :farmers, only: [:index, :show, :new, :create, :edit, :update]

  # TODO Add Edit & Create to farmers!!!

  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
