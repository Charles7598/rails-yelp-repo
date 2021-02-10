Rails.application.routes.draw do
  resources :restaurants, except: [:update, :delete] do
    resources :reviews, only: [:new, :create]
  end
end
