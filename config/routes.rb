Rails.application.routes.draw do
  resources :cookbook_ingredients
  resources :cookbooks
  resources :ingredients
  get 'welcome/index'
 
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
