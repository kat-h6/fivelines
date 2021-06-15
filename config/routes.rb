Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resource :calendar, only: :show


  resources :lessons, only: [:new, :show, :create, :index] do
    resources :assignments, only: [:new, :create]
  end

  resources :assignments, only: [:show, :update]


  resources :students, only: :index

  resources :users do
    member do
      get :student_assignments
    end
  end

  resources :chapters, only: [] do
    resources :resources, only: [:new, :create, :index]
  end

  resources :resources, only: [:show]
  # just for demo

    


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
