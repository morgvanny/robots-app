Rails.application.routes.draw do
  resources :lasers
  resources :robots, only: [:index, :show, :new] do
    resources :lasers, only:[:index, :new, :create]
  end

  #get '/robots/:robot_id/lasers', to: 'lasers#index', as: 'robot_lasers'

  # /artists/:artist_id/songs/:id

  # /artists/:artist_id/songs

  resources :owners, shallow: true do
    resources :cats do
      resources :toys
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
