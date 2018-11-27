Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :challenges, except: [:destroy] do
    resources :tips, except: [:destroy]
  end

  resources :user_challenges, except: [:edit, :update, :destroy]
  resources :transportations, except: [:destroy]
end
