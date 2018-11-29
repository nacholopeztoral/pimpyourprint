Rails.application.routes.draw do
  get '/quiz_results', to: 'quiz_results#show'
  get '/quiz', to: 'quiz#show'
  devise_for :users
  root to: 'pages#home'

  resources :challenges, except: [:destroy] do
    resources :user_challenges, only: :create
  end

  get 'activation/:id', to: 'challenges#activation', as: :activation

  resource :my_challenge, only: [:show, :index]
  resources :transportations, only: [:new, :create]

end
