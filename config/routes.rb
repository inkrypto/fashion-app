Rails.application.routes.draw do

  get '/fashions' => 'fashions#index'
  get '/fashions/:id'  => 'fashions#show', :as => :fashion #name_route
  post '/fashions' => 'fashions#create'

end
