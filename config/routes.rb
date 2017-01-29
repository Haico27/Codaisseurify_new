Rails.application.routes.draw do

  root "artists#index"

  resources :artists, only: [:show, :create, :destroy] do
    resources :songs, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
