# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # корень сайта
  root 'events#index'

  resources :events do
    # Вложенный ресурс комментов
    # Нам понадобится два экшена: create и destroy
    resources :comments, only: %i[create destroy]
    # вложенный ресурс подписок
    resources :subscriptions, only: %i[create destroy]
  end
  resources :users, only: %i[show edit update]
end
