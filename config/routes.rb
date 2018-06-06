Rails.application.routes.draw do
  devise_for :users
  root 'boards#index'

  resources :boards do
    resources :lists
  end

  resource :lists do
    resources :tasks
    end

end
