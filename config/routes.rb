Rails.application.routes.draw do
  root to: 'pages#home'

  get '/about', to: 'pages#about'

  get '/quiz_results', to: 'quiz_results#show'
  get '/quiz', to: 'quiz#show'

  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :challenges, except: [:destroy] do
    resources :user_challenges, only: :create
  end

  get 'activation/:id', to: 'challenges#activation', as: :activation
  post 'completed/:id', to: 'user_challenges#completed', as: :completed

  resource :my_challenge, only: :show # /my_challenge
  resources :my_challenges, only: :index # /my_challenges

  resources :transportations, only: [:new, :create]
  resource :dashboard, only: :show

  resources :events, only: [:index, :show, :new, :create] do
    resources :attendances, only: :create
    resources :comments, except: [:edit, :destroy]
  end
end
