Rails.application.routes.draw do
  resources :events
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'pages#home'

  resources :events do
    post 'rsvps', to: 'rsvps#create', on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
