Rails.application.routes.draw do
  get '/quiz', to: 'quiz#show'
  get '/quiz_results', to: 'quiz_results#show'
  devise_for :users
  root to: 'pages#home'

  resources :challenges, except: [:destroy] do
    resources :user_challenges, only: [:create] do
      resources :tips, only: [:index]
    end
  end

  get 'activation/:id', to: 'challenges#activation', as: :activation

  resource :my_challenge, only: :show
  resources :transportations, only: [:new, :create]

end
