Rails.application.routes.draw do
  #mount ActionCable.server => "/cable"

  namespace :admin do
    resources :users
    resources :menus
    resources :dishes
    root "dashboard#index"
  end

  devise_for :users, controllers: {sessions: "users/sessions"}
  root "home#index"
end
