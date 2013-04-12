ProjetTutoreMissions::Application.routes.draw do

  root :to => "home#index"
  ActiveAdmin.routes(self)

  devise_for :users

  get "home/index"

  resources :frais_annexes


  resources :frais_repas


  resources :frais_hebergements


  resources :itineraires


  resources :vehicule_persos


  resources :frais_deplacements


  resources :moyen_transports


  resources :missions

  resources :users do 
    resources :missions do 
      resources :frais_annexes
      resources :frais_repas
      resources :frais_hebergements
      resources :itineraires
      resources :vehicule_persos
      resources :frais_deplacements
      resources :moyen_transports
    end
  end

  resources :fichier_pdf

  get 'users/new'
  post 'users/create'
  get 'users/:id' => 'user#show'
  get 'users/:id/mission/'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
 

  devise_for :users

  devise_scope :user do
    root :to => "users/sessions#new"
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
    get "sign_up", :to => "users/registrations#new"
  end

end
