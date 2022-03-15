Rails.application.routes.draw do
  get 'experiences/index'
  get 'experiences/create'
  get 'experiences/new'
  get 'experiences/show'
  get 'experiences/edit'
  get 'experiences/update'
  devise_for :users
  root to: 'pages#home'
  resources :experiences, except: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
