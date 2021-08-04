Rails.application.routes.draw do
  root "categories#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories do
    resources :tasks
  end
end
