Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy]do 
    resources :messages, only: [:create]
   end
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end