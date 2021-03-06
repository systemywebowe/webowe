Webowe::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  
  resources :file_projects


  resources :partner_projects


  resources :sponsor_projects


  resources :partners


  resources :sponsors


  resources :awards


  resources :posts


  resources :project_files


  resources :categories


  resources :projects


  resources :member_teams


  resources :teams


  resources :members


  resources :users
  
  
  match 'posts/new' => 'posts#new', :via => [:get, :post]
  match '/repo' => 'repo#index', :via => [:get, :post]
  match '/repo/new' => 'repo#new', :via => [:get, :post]
  match 'member_teams/new' => 'member_teams#new', :via => [:get, :post]
  match '/file_projects/new' => 'file_projects#new', :via => [:get, :post]
  match '/home', :to =>'home#index'
  match '/', :to =>'home#index'
  match '/index', :to =>'home#index'
  match '/test', :to =>'test#test.html'
  resources :sessions, only: [:new, :create, :destroy]
  match '/signup', :to =>'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy'
  
  #get "home/index"
  #root :to => 'home#index'
  

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

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
