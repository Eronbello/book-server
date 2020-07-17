Rails.application.routes.draw do
  namespace 'api' do
  	namespace 'v1' do
      resources :user
      resources :book
      get '/mybooks', to: 'book#by_user'
      get '/loans', to: 'book#loans'
      post '/loans', to: 'book#create_loan'
  	end
  end
  post '/auth/login', to: 'authentication#login'
end
