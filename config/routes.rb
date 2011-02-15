Sosbichos::Application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :profiles
  end

  resources :profiles
  root :to => "home#index"
end
