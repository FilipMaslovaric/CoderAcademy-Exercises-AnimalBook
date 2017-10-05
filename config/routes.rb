Rails.application.routes.draw do
  get 'pages/profiles'

  devise_for :users

  root 'pages#profiles'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
