Rails.application.routes.draw do
  get 'addresses/index'
  get 'addresses/edit'
  get 'orders/index'
  get 'orders/show'
  get 'customers/index'
  get 'customers/show'
  get 'customers/edit'
  get 'products/index'
  get 'products/new'
  get 'products/update'
  get 'products/edit'
  get 'homes/top'
  get 'homes/about'
  devise_for :customers, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  devise_for :admins,skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
