Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "search", to: "users#search", as: :search
  resources :user_places, only: [:create]
  resources :allergies, only: [:index]
  resources :user_allergies, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
