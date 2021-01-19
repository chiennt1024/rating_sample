Rails.application.routes.draw do
  resources :posts do
    resources :comments
    resources :rates
  end
  root "posts#index"
end
