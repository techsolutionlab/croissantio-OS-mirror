Rails.application.routes.draw do

  devise_for :users
  root "pages#home"

  get 'newsletter' => "pages#newsletter"

  get 'merci' => "pages#merci"

  get 'apprendre-cmo-slack' => "pages#apprendre-cmo-slack"

  get 'experience-developpeur-mailjet' => "pages#experience-developpeur-mailjet"

  get 'chiffres-retention-applications-mobiles' => "pages#chiffres-retention-applications-mobiles"

  get 'croissance-etsy-analyse' => "pages#croissance-etsy-analyse"

  get 'alex-schultz-vp-growth-facebook' => "pages#alex-schultz-vp-growth-facebook"

  get 'culture-data-zynga' => "pages#culture-data-zynga"

  get 'non-growth-hacking' => "pages#non-growth-hacking"

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
