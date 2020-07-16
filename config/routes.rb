Rails.application.routes.draw do
  namespace 'api' do
  	namespace 'v1' do
      resources :user
      resources :book
  	end
  end
  post '/auth/login', to: 'authentication#login'
end
