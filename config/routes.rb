Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :orders
resources :menu

get 'signup', to: 'users#new'
resources :users, except: [:new]

root 'welcome#index'
end
