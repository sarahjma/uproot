Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get 'action', to: 'pages#action', as: :action
  resources :chosen_answers, only: [:new, :create]
  resources :quiz_results, only: [:new, :create, :show] do
    resources :questions, only: [:show]
  end
  resources :cities, only: [:show, :index]
  resources :users, only: [:show]
end
