Rails.application.routes.draw do
  root 'groups#index'

  get 'welcome/index'

  resources :groups
end
