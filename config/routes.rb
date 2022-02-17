Rails.application.routes.draw do


  get 'admin_customer/index'
  get 'admin_customer/show'
  get 'admin_customer/edit'
  devise_for :customers, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  devise_for :admins,skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}
root to: 'homes#top'
  get 'homes/about'
  get '/my_cart' => 'carts#my_cart'
  post '/add_item' => 'carts#add_item'
  post '/update_item' => 'carts#update_item'
  delete '/delete_item' => 'carts#delete_item'
resources :addresses
resources :orders
resources :customers
resources :admin_customer
resources :products
resources :products_customers
resources :cart_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
