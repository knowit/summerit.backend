Rails.application.routes.draw do
  resources :rpis
  resources :train_statuses
  resources :trains
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
