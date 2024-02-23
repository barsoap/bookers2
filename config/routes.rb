Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  get 'homes/about'
  # get "/homes/about" => "home#about", as: "about" #これなに！？meshiterroのやつ
  resources :users, only: [:index, :show, :edit, :update]
  # get 'users/edit'
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
