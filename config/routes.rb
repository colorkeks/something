Rails.application.routes.draw do

  get 'reward_templates/new'

  get 'reward_templates/edit'

  get 'reward_templates/update'

  get 'reward_templates/create'

  get 'reward_templates/destroy'

  get 'monsters/new'

  get 'monsters/edit'

  get 'monsters/update'

  get 'monsters/create'

  get 'monsters/destroy'

  get 'quest_templates/new'

  get 'quest_templates/edit'

  get 'quest_templates/update'

  get 'quest_templates/create'

  get 'quest_templates/destroy'

  resources :attack_types
  resources :resists
  resources :attack_type_templates
  resources :resist_templates
  get 'table/index'
  root to: 'table#index', as: 'table'

  devise_for :users, :controllers => {:registrations => "users/registrations"}

  resources :users

  resources :images

  resources :characters

  resources :character_parameters

  resources :character_templates

  resources :bag_templates

  resources :items

  resources :item_templates

  resources :quest_templates

  resources :monsters

  resources :reward_templates

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
