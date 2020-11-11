Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  resources :restaurants, only: [ :new, :create, :show] do
    resources :reviews, only: [ :new, :create ]
  end
  # resources :reviews, only: [ :destroy ]
  #                 GET    '/restaurants/new'(.:format)      restaurants#new, as: :new_restaurant
  # edit_restaurant GET    '/restaurants/:id/edit'(.:format) restaurants#edit
  #      restaurant GET    '/restaurants/:id'(.:format)      restaurants#show
  #                 PATCH  '/restaurants/:id'(.:format)      restaurants#update
  #                 PUT    '/restaurants/:id'(.:format)      restaurants#update
  #                 DELETE '/restaurants/:id'(.:format)      restaurants#destroy

end
