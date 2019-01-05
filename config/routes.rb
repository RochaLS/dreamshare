Rails.application.routes.draw do

  devise_for :users
  authenticated :user do
    root 'dreams#index', as: :authenticated_root
  end

  root to: 'pages#home'

  resources :dreams
  resources :users, only: [ :index, :show ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
