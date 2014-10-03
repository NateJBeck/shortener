Rails.application.routes.draw do
  resources :urls, only: [:index, :new, :create]

  root "urls#index"

end
