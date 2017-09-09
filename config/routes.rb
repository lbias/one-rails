Rails.application.routes.draw do
  root "topics#index"

  resources :topics do
    member do
      post 'upvote'
    end
  end

  get 'welcome/about'  
end
