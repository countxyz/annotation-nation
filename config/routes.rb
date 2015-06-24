Rails.application.routes.draw do
  resources :creations, only: [:new, :create, :show]

  get 'new', to: 'creations#new'

  get    'signin',  to: 'sessions#new'
  post   'signin',  to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy', as: 'signout'

  root 'pages#home'
end
