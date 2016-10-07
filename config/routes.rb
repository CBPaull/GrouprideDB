Rails.application.routes.draw do
  resources :users
  patch 'users/:id/address' => 'users#address'
  resources :routes
  resources :grouprides
  post 'addresses/create'

  delete 'addresses/destroy'

  post 'ratings/create'

  patch 'ratings/update'

  delete 'ratings/destroy'

  post 'comments/create'

  patch 'comments/update'

  delete 'comments/destroy'

  post 'favorites/create'

  delete 'favorites/destroy'

  post 'attendees/create'

  delete 'attendees/destroy'

  post 'friendships/create'

  delete 'friendships/destroy'

  get 'sessions/new'

  post '/sessions/' => 'sessions#login'

  delete 'sessions/logout'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
