Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'users#index'
  resources :users, only: [:index] do
    resources :friend_approvals, only: [:create, :destroy]
    resources :user_relations, only: [:create]
  end
end
