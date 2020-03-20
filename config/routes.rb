# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # корень сайта
  root 'events#index'

  resources :events do
    resources :comments, only: %i[create destroy]
    resources :subscriptions, only: %i[create destroy]
    resources :photos, only: [:create, :destroy]
    post :show, on: :member
  end
  resources :users, only: %i[show edit update]

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
