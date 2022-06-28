Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "showrooms/new", to: "showrooms#new" # The `new` route needs to be *before* `show` route.
  post "showrooms", to: "showrooms#create"
  get 'showrooms', to: 'showrooms#index'
end
