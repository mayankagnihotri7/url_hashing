Rails.application.routes.draw do
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root "home#index"

  resources :links, only: %i[index create update show]

  # get "*path", to: "home#index", via: :all
end
