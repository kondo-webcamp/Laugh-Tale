Rails.application.routes.draw do
  devise_for :customers, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  devise_for :admins,skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}
root to: 'homes#top'
  get 'homes/about'
  get 'cart_items/ending' 
  patch '/customers/:id/withdrawal' => 'customers#withdrawal', as: 'withdrawal'

  get 'orders/:id/check' =>'orders#check',as: 'check'
  get 'genres/check' =>'genres#check',as: 'genre_check'
resources :order_details 
resources :genres
resources :addresses
resources :orders
resources :customers
resources :admin_customer
resources :products
resources :products_customers
resources :cart_items do
  collection do
    delete '/' => 'cart_items#all_destroy'
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
