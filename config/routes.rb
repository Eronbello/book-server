Rails.application.routes.draw do
  namespace 'api' do
  	namespace 'v1' do
      resources :user
      resources :book
      post '/loans', to: 'book#create_loan'
      get '/categories', to: 'category#index'
      get '/books/availables', to: 'book#availables'
      get '/books/borroweds', to: 'book#borroweds'
  	end
  end
  post '/auth/login', to: 'authentication#login'
end
