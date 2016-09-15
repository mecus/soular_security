Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    sessions: 'users/sessions'

  }
  devise_scope :user do
    get 'login', to: 'users/sessions#new'
    get 'register', to: 'users/registrations#new'
  end
  resources :quotes
  resources :posts
  get 'about' => 'home#about'
  get 'contact' => 'home#contact'
  get 'career' => 'home#career'
  get 'blog' => 'home#blog'
  get 'shop' => 'home#shop'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  get 'services' => 'services#index'
  get 'security_guard' => 'services#security_guard'
  get 'close_protection' => 'services#close_protection'
  get 'event_security' => 'services#event_security'
  get 'construction_security' => 'services#construction_security'
  get 'hospitality_security' => 'services#hospitality_security'
  get 'retail_security' => 'services#retail_security'
  get 'concierge_security' => 'services#concierge_security'
  get 'corporate_security' => 'services#corporate_security'
  get 'hotel_security' => 'services#hotel_security'
  get 'mobile_security' => 'services#mobile_security'
  get 'industrial_security' => 'services#industrial_security'

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
