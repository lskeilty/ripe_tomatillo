Rails.application.routes.draw do

  root "categories#index"
  resources :users, only: [:new, :create]

  resources :categories, only: [:show, :index ], shallow: true do
    resources :films, only: [:show, :index ]
  end

  resources :films, only: [:show, :index ], shallow: true do
    resources :reviews, only: [:new, :index, :create]
  end

  resources :reviews, only: [:new, :create], shallow: true do
    resources :comments, only: [:new, :index, :create]
  end



  # get 'categories/index'

  # get 'categories/show'

  # get 'films/show'

  # get 'users/new'

  # get 'users/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
