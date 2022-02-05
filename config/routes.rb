# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :links, only: %i[index create update]
  get "/:lookup_code" => "links#show"

  get "*path", to: "home#index", via: :all
end
