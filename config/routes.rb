Mascota::Application.routes.draw do
 
  devise_for :shelters

  #get "access/login"

  #get "access/logout"

  #post "access/attempt_login"


  match "/home" => "StaticPages#home" 

  get "static_pages/help"

  get 'test/update_breeds', :as => 'update_breeds'
  get 'test/index', :as => 'pruebas'
  match "/cuidados" => "StaticPages#care" 

  #get "static_pages/shelters"

  #get "static_pages/shelters_show"

  resources :list_pets, :path => "buscador" do
    get :reset_filterrific, on: :collection
  end

  resources :list_shelters, :path=>"refugios" do
    collection do
    get 'listed'
    end
  end
  

   scope :module => 'administration' do
    resources :shelters, :path => "administracion" do
      resources :pets, :path => "mascotas"
      resources :carers, :path => "cuidadores"
    end
  
  end



  

  scope :module => 'admin' do
    resources :pet_type_colours
    resources :pet_sizes
    resources :pet_type_breeds
    resources :pet_types
    resources :pet_statuses
    resources :hair_types
    resources :admin_shelters
    resources :admin_pets
    resources :admin_carers
    resources :managements
  end






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
  root :to => 'static_pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
