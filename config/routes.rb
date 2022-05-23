Rails.application.routes.draw do
  get 'boats/index'
  get 'boats/new'
  get 'boats/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
