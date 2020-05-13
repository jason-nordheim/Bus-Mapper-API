Rails.application.routes.draw do
  resources :buses, except: [ :edit, :update, :destroy, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
