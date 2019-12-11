Rails.application.routes.draw do
  root to: 'pages#home'
  resources :chosen_answers, only: [:new, :create]
  resources :quiz_results, only: [:new, :create] do
    resources :questions, only: [:show]
  end
end
