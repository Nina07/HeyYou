Rails.application.routes.draw do
  root "friends#index"
  resources :friends
  # get 'friends', to: "friends#index"
  # get 'friends/:id', to: "friends#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
