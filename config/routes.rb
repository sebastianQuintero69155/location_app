Rails.application.routes.draw do
  resources :logins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'singup', to: "logins#new"
  get 'acces', to: 'sessions#new'
  post 'acces', to: 'sessions#create'
  delete 'acces', to: 'sessions#destroy'
  get 'maps', to: 'pages#maps'
end
