Rails.application.routes.draw do
  root 'categories#index'
  #get 'admin/index'

  #get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  resources :categories do
    resources :businesses
  end

  resources :businesses do
    resources :reviews
  end

  resources :users
  get '/welcome' => 'welcome#index'
  get '/categories/:id/businesses/:id' => 'businesses#show'

  get '/categories' => 'categories#index'

  get '/categories/:id/businesses/find' => 'businesses#find'

  post '/categories/new' => 'categories#create'

  post '/categories/:id/businesses/:id/edit' => 'businesses#edit'


#   get 'auth/:provider', to: 'sessions#create'
# get 'auth/failure', to: redirect('/')
# get 'signout', to: 'sessions#destroy', as: 'signout'
  # get 'auth/:provider'
  match 'auth/:provider/callback', to: 'sessions#create', :via => [:get, :post]
  match 'auth/failure', to: redirect('/'), :via => [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', :via => [:get, :post]

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  
  # get 'admin' => 'admin#index'
  # controller :sessions do
  #   get 'login' => :new
  #   post 'login' => :create
  #   delete 'logout' => :destroy
  # end


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  

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
