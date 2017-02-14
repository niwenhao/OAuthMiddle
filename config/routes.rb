Rails.application.routes.draw do
  resources :owners do
      resources :tokens do
          resources :auth_properties
      end
  end
  get '/apigw/login/display', to: 'api_gw_login#display'
  post '/apigw/login/input', to: 'api_gw_login#input'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
