Rails.application.routes.draw do
  resources :cars, only: [:index, :show] do
    resources :reviews, only: [:create]
    resources :favourites, only: [:create]
  end
  resources :favourites, only: [:index, :destroy]
end
