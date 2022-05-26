Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boats do
    resources :bookings
  end
  get :my_bookings, to: "bookings#index"
  namespace :owner do
    resources :boats, only: [ :create, :edit, :update, :destroy ]
    resources :bookings do
      member do
        patch :cancel
        patch :accept
      end
    end
  end
end
