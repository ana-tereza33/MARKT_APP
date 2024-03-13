Rails.application.routes.draw do
  # get 'chatrooms/show'
  # root to: "farmers#index"
  root to: "pages#home"

  resources :chatrooms, only: [:create, :show] do
    resources :messages, only: :create
  end

  get "/dashboard", to: "pages#dashboard"

  # get 'products/create'
  resources :products, only: [:create]

  # get 'baskets/add'
  # get 'baskets/basket'
  # get 'orders/new'
  # get 'orders/create'

  resources :baskets, only: [:new, :update] do
    resources :orders, only: [:new, :create]
  end

  # get 'chats/show'
  resources :chats, only: [:show]

  # get 'farmers/index'
  # get 'farmers/show'
  # get 'farmers/profile'
  resources :farmers, only: [:index, :show, :new, :create, :edit, :update]

  # TODO Add Edit & Create to farmers!!!

  devise_for :users

  # get '/contact', to: 'contact#new'
  # post '/contact_submit', to: 'contact#submit', as: :contact_submit

  get "/search", to: "pages#search", as: :search

end
