Rails.application.routes.draw do
  resources :food_items do
    resources :orders
  end
  get 'menu' => 'home#menu'
  get 'contact_us' => 'home#contact_us'

  root "home#index"

end
