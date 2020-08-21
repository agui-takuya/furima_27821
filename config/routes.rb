Rails.application.routes.draw do
  devise_for :users
  # devise_scope :user do
  #   get 'send_destinations', to: 'users/registrations#new_send_destination'
  #   post 'send_destinations', to: 'users/registrations#create_send_destination'
  # end
  root 'items#index'

  # resources :users, only: [:index, :edit]
end
