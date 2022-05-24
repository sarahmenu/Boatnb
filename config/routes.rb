Rails.application.routes.draw do
  devise_for :users
  root to: 'boats#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boats, only: [ :show, :index ] do
    resources :booking, only: [ :create ]
  end
  namespace :owner do
    resources :boats, only: [ :create, :update ]
    resources :bookings do
      member do
        patch :cancel
      end
    end
  end
end
