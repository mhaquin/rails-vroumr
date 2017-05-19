Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
                   registrations: 'users/registrations',
                   passwords: 'users/passwords' }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :vehicles, only: [:index, :show] do
    resources :orders, only: [:index, :create]
  end
end
