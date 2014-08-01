Rails.application.routes.draw do
  # Routes for the Membership resource:
  # CREATE
  get '/new_membership' => 'memberships#new'
  get '/create_membership' => 'memberships#create'

  # READ
  get '/memberships' => 'memberships#index'
  get '/memberships/:id' => 'memberships#show'

  # UPDATE
  get '/memberships/:id/edit' => 'memberships#edit'
  get '/memberships/:id/update' => 'memberships#update'

  # DELETE
  get '/memberships/:id/destroy' => 'memberships#destroy'
  #------------------------------

  # Routes for the Gang resource:
  # CREATE
  get '/new_gang' => 'gangs#new'
  get '/create_gang' => 'gangs#create'

  # READ
  get '/gangs' => 'gangs#index'
  get '/gangs/:id' => 'gangs#show'

  # UPDATE
  get '/gangs/:id/edit' => 'gangs#edit'
  get '/gangs/:id/update' => 'gangs#update'

  # DELETE
  get '/gangs/:id/destroy' => 'gangs#destroy'
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get '/new_event' => 'events#new'
  get '/create_event' => 'events#create'

  # READ
  get '/events' => 'events#index'
  get '/events/:id' => 'events#show'

  # UPDATE
  get '/events/:id/edit' => 'events#edit'
  get '/events/:id/update' => 'events#update'

  # DELETE
  get '/events/:id/destroy' => 'events#destroy'
  #------------------------------

  # Routes for the Robber resource:
  # CREATE
  get '/new_robber' => 'robbers#new'
  get '/create_robber' => 'robbers#create'

  # READ
  get '/robbers' => 'robbers#index'
  get '/robbers/:id' => 'robbers#show'

  # UPDATE
  get '/robbers/:id/edit' => 'robbers#edit'
  get '/robbers/:id/update' => 'robbers#update'

  # DELETE
  get '/robbers/:id/destroy' => 'robbers#destroy'
  #------------------------------

  # Routes for the Bank resource:
  # CREATE
  get '/new_bank' => 'banks#new'
  get '/create_bank' => 'banks#create'

  # READ
  get '/banks' => 'banks#index'
  get '/banks/:id' => 'banks#show'

  # UPDATE
  get '/banks/:id/edit' => 'banks#edit'
  get '/banks/:id/update' => 'banks#update'

  # DELETE
  get '/banks/:id/destroy' => 'banks#destroy'
  #------------------------------
  get '/new_membership_for_gang/:id' => 'membership#newrobber'
  get '/new_membership_for_robber/:id' => 'membership#newgang'
  root :to => 'gangs#index'
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
