Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "search", to: "users#search", as: :search

  resources :user_places, only: [:create] do
    resources :user_allergies, only: [:new,:create] do
      resources :translated_allergies, only: [:new]
    end
  end

  # resources :user_allergies, only: [:create]
  resources :translated_allergies, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
