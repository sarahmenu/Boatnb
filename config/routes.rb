Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boats, only: [ :show, :index ] do
    resources :bookings, only: [ :create, :new ]
  end
  get :my_bookings, to: "bookings#my_bookings"
  namespace :owner do
    resources :boats, only: [ :create, :update ]
    resources :bookings do
      member do
        patch :cancel
        patch :accept
      end
    end
  end
end
