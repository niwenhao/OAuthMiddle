Rails.application.routes.draw do
  resources :owners do
    resources :owner_properties
    resources :services do
      resources :scopes
    end
    resources :tokens do
      resources :auth_properties
    end
  end
  get '/apigw/login/display', to: 'api_gw_login#display'
  post '/apigw/login/login', to: 'api_gw_login#login'
  post '/apigw/login/grant', to: 'api_gw_login#grant'
  post '/apigw/login/consent', to: 'api_gw_login#consent'
  post '/apigw/token/by_code', to: 'api_gw_token#by_code'
  post '/apigw/token/refresh', to: 'api_gw_token#refresh'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
