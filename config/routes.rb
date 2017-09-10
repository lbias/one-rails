Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'

  get 'welcome/index'

  resources :groups do
    resources :posts
    member do
      post :join
      post :quit
    end
  end

  namespace :account do
    resources :groups
    resources :posts
  end
end
