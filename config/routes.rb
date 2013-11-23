Kafe::Application.routes.draw do
  # Routes for the Order_link resource:
  # CREATE
  get '/order_links/new', controller: 'order_links', action: 'new', as: 'new_order_link'
  post '/order_links', controller: 'order_links', action: 'create', as: 'order_links'

  # READ
  get '/order_links', controller: 'order_links', action: 'index'
  get '/order_links/:id', controller: 'order_links', action: 'show', as: 'order_link'

  # UPDATE
  get '/order_links/:id/edit', controller: 'order_links', action: 'edit', as: 'edit_order_link'
  patch '/order_links/:id', controller: 'order_links', action: 'update'

  # DELETE
  delete '/order_links/:id', controller: 'order_links', action: 'destroy'
  #------------------------------

  # Routes for the Order_menu resource:
  # CREATE
  get '/order_menus/new', controller: 'order_menus', action: 'new', as: 'new_order_menu'
  post '/order_menus', controller: 'order_menus', action: 'create', as: 'order_menus'

  # READ
  get '/order_menus', controller: 'order_menus', action: 'index'
  get '/order_menus/:id', controller: 'order_menus', action: 'show', as: 'order_menu'

  # UPDATE
  get '/order_menus/:id/edit', controller: 'order_menus', action: 'edit', as: 'edit_order_menu'
  patch '/order_menus/:id', controller: 'order_menus', action: 'update'

  # DELETE
  delete '/order_menus/:id', controller: 'order_menus', action: 'destroy'
  #------------------------------

  # Routes for the Order resource:
  # CREATE
  get '/orders/new', controller: 'orders', action: 'new', as: 'new_order'
  post '/orders', controller: 'orders', action: 'create', as: 'orders'

  # READ
  get '/orders', controller: 'orders', action: 'index'
  get '/orders/:id', controller: 'orders', action: 'show', as: 'order'

  # UPDATE
  get '/orders/:id/edit', controller: 'orders', action: 'edit', as: 'edit_order'
  patch '/orders/:id', controller: 'orders', action: 'update'

  # DELETE
  delete '/orders/:id', controller: 'orders', action: 'destroy'
  #------------------------------

  # Routes for the Todays_special resource:
  # CREATE
  get '/todays_specials/new', controller: 'todays_specials', action: 'new', as: 'new_todays_special'
  post '/todays_specials', controller: 'todays_specials', action: 'create', as: 'todays_specials'

  # READ
  get '/todays_specials', controller: 'todays_specials', action: 'index'
  get '/todays_specials/:id', controller: 'todays_specials', action: 'show', as: 'todays_special'

  # UPDATE
  get '/todays_specials/:id/edit', controller: 'todays_specials', action: 'edit', as: 'edit_todays_special'
  patch '/todays_specials/:id', controller: 'todays_specials', action: 'update'

  # DELETE
  delete '/todays_specials/:id', controller: 'todays_specials', action: 'destroy'
  #------------------------------

  # Routes for the Day_menu resource:
  # CREATE
  get '/day_menus/new', controller: 'day_menus', action: 'new', as: 'new_day_menu'
  post '/day_menus', controller: 'day_menus', action: 'create', as: 'day_menus'

  # READ
  get '/day_menus', controller: 'day_menus', action: 'index'
  get '/day_menus/:id', controller: 'day_menus', action: 'show', as: 'day_menu'

  # UPDATE
  get '/day_menus/:id/edit', controller: 'day_menus', action: 'edit', as: 'edit_day_menu'
  patch '/day_menus/:id', controller: 'day_menus', action: 'update'

  # DELETE
  delete '/day_menus/:id', controller: 'day_menus', action: 'destroy'
  #------------------------------

  # Routes for the Item_menu resource:
  # CREATE
  get '/item_menus/new', controller: 'item_menus', action: 'new', as: 'new_item_menu'
  post '/item_menus', controller: 'item_menus', action: 'create', as: 'item_menus'

  # READ
  get '/item_menus', controller: 'item_menus', action: 'index'
  get '/item_menus/:id', controller: 'item_menus', action: 'show', as: 'item_menu'

  # UPDATE
  get '/item_menus/:id/edit', controller: 'item_menus', action: 'edit', as: 'edit_item_menu'
  patch '/item_menus/:id', controller: 'item_menus', action: 'update'

  # DELETE
  delete '/item_menus/:id', controller: 'item_menus', action: 'destroy'
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  root "users#index"

  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create', as: 'users'

  # READ
  get '/users', controller: 'users', action: 'index'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

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
