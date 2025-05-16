Rails.application.routes.draw do
  root to: "pages#home"

  get "pages/home"
  resources :cars, only: [:index, :show] do
    resources :reviews, only: [:create]
    resources :favourites, only: [:create]
  end
  resources :favourites, only: [:index, :destroy]
end
