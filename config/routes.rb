Rails.application.routes.draw do
  namespace 'api' do
  	namespace 'v1' do
      resources :user
      resources :book
      post '/loans', to: 'book#create_loan'
  	end
  end
  post '/auth/login', to: 'authentication#login'
end
