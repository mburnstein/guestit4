Rails.application.routes.draw do
  root 'guests#index'
  resources :guests
end
