Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # get user: 'dashboard_path', as: :user_root
  resource :dashboard, only: :show
  resource :calendar, only: :show
  

  resources :lessons, only: [:new, :create, :index] do
    resources :assignments, only: [:new, :create]
  end

  resources :assignments, only: [:show, :update]

  resources :users do 
    member do 
      get :student_assignments
      
    end
  end
    

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
