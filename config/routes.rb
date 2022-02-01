Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :courses, only: [:index, :show] do
    resources :enrollments, only: [:new, :create]
    resources :units, only: [:new, :create]
  end
  resources :enrollments, only: :index
  resources :units, only: [:index, :show, :edit, :update, :destroy] do
    resources :activities, only: [:new, :create]
  end
  resources :activities, except: [:new, :create] do
    resources :solutions, only: [:new, :create]
  end
  resources :solutions, only: :index
end
