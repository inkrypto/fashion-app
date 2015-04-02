Rails.application.routes.draw do

  root 'pages#index'

  namespace :api do
      namespace :v1 do
        get '/fashions' => 'fashions#index'
        get '/fashions/:id' => 'fashions#show', :as => :employee
        post '/fashions' => 'fashions#create'
      end
    end
  end