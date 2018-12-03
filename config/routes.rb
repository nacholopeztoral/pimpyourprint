Rails.application.routes.draw do
  root to: 'pages#home'

  get '/quiz_results', to: 'quiz_results#show'
  get '/quiz', to: 'quiz#show'

  devise_for :users

  resources :challenges, except: [:destroy] do
    resources :user_challenges, only: :create
  end

  get 'activation/:id', to: 'challenges#activation', as: :activation
  post 'completed/:id', to: 'user_challenges#completed', as: :completed

  resource :my_challenge, only: :show
# /my_challenge --> mychallenge#show
  resources :my_challenges, only: :index
# /my_challenges --> mychallenge#index
  resources :transportations, only: [:new, :create]
  resource :dashboard, only: :show

  resources :events
  resources :messages
  resources :responses

end
