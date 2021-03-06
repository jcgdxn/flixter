Rails.application.routes.draw do
  devise_for :users
  resource :dashboard, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "home#index"
  root 'static_pages#index'
  get 'privacy', to: 'static_pages#privacy'
    resources :courses, only: [:index, :show] do
      resources :enrollments, only: :create
      resources :charges    #so users can access 'charges' controller, added this route to file to stripe.com docs
    end
    resources :lessons, only: [:show]
      namespace :instructor do
          resources :lessons, only: [:update]
          resources :sections, only: [:update] do
            resources :lessons, only: [:create]
      end
      resources :courses, only: [:new, :create, :show] do
        resources :sections, only: [:create]
      end
    end
  end
