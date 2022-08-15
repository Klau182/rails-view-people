Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "siberiano", to: "home#siberiano"
  get "golden_retriever", to: "home#golden_retriever"
  get "poodoole", to: "home#poodoole"
  root "home#index"
end
