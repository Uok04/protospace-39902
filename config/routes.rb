Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :comments, only: :create
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :users, only: :show


  # registrations#createに対応するルートを追加
  # devise_scope :user do
  #   post '/users', to: 'devise/registrations#create'
  # end
















  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
