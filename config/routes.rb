Rails.application.routes.draw do
  get 'about', to:'about#index'

  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'

  # sign up route
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  # sign in route
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  # logout route
  delete 'logout', to: 'sessions#destroy'

  # password reset 
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'

  # route route
  root to:'main#index'
end
