Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :experiences do
    resources :bookings, only: [ :index, :new, :create ]
  end
  resources :bookings, only: [ :show, :edit, :update, :destroy ]
end
