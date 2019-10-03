Rails.application.routes.draw do
  devise_for :users
  resources :lasers
  resources :robots, only: [:index, :show, :new] do
    resources :lasers, only:[:index, :new]
  end
  root 'robots#index'
  #get '/robots/:robot_id/lasers', to: 'lasers#index', as: 'robot_lasers'

  # /artists/:artist_id/songs/:id

  # /artists/:artist_id/songs


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
