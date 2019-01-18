Rails.application.routes.draw do
  scope "(:locale)", locale: /en|pt-BR/ do
    devise_for :users
    authenticated :user do
      root 'dreams#index', as: :authenticated_root
    end
  end

  scope "(:locale)", locale: /en|pt-BR/ do
  root to: 'pages#home'
  end



  scope "(:locale)", locale: /en|pt-BR/ do
  resources :dreams
  resources :users, only: [ :index, :show ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
