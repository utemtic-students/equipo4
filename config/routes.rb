Rails.application.routes.draw do

<<<<<<< HEAD
  get 'morrallas/agregar_saldo'
  post 'morrallas/agregar_saldo'

  post 'morrallas/cobrar'

 

=======
  
  devise_for :models
>>>>>>> solution
  get "archivos/subir_archivos"
  post "archivos/subir_archivos"
  get "archivos/listar_archivos"
  post "archivos/borrar_archivos"
  get "archivos/guardar_coments"
  post "archivos/guardar_coments"
  post "archivos/create"

get "morrallas/new"
post "morrallas/new"
  get "morrallas/agregar_saldo"
  post "morrallas/agregar_saldo"
  post "morrallas/index"
  get "morrallas/index"
  post "morrallas" => "morrallas#agregar_saldo"




  resources :morralla

  get 'modulos/index'

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :archivos
    resources :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'modulos#index'
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
