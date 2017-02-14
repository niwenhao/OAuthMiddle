Rails.application.routes.draw do
  resources :owners do
      resources :tokens do
          resources :auth_properties
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
