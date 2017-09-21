Rails.application.routes.draw do

  devise_for :users
  root "categories#index"

  resources :categories, only: [:show, :index ], shallow: true do
    resources :films, only: [:show, :index ]
  end

  resources :films, only: [:show, :index ], shallow: true do
    resources :reviews, only: [:new, :index, :create]
    resources :ratings, only: [:new, :create]
  end

  resources :reviews, only: [:new, :create], shallow: true do
    resources :comments, only: [:new, :index, :create]
    resources :ratings, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
