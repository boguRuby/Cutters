Rails.application.routes.draw do
  resources :cutters do
  	resources :comments
  end
  
  root 'cutters#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
