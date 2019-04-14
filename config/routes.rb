# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "posts#index"

  resources :users, only: [:show]

  resources :posts, only: [:index, :show]  do
    resources :comments, only: [:index]
  end
end
