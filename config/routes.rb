Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :lessons, only: [:new, :create, :index] do
  end

  resource :calendar, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
