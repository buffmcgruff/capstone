Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  		get "/products" => "products#index"

  		# new and create 
  		get "/products/new" => "products#new"
  		post "/products" => "products#create"
  		# show
  		get "/products/:id" => "products#show"
  		#edit
  		get "/products/:id/edit" => "products#edit"
  		patch "/products/:id" => "products#update"
  		#delete
  		delete "/products/:id" => "products#destroy"

      # Search
      post "/search" => "products#search"





  		get"/new_product_line" => "products#shirt"
  		post "/new_product" => "products#newshirt"




      #suppliers

      get "/suppliers" => "suppliers#index"

      #new and create 
      get "/suppliers/new" => "suppliers#new"
      post "/suppliers/create" => "suppliers#create"

      #show
      get "/suppliers/:id" => "suppliers#show"
      #edit
      get "/suppliers/:id/edit" => "suppliers#edit"
      patch "/suppliers/:id" => "suppliers#update"
      #delete
      delete "suppliers/:id" => "suppliers#destroy"
      # search
      post "/search" => "suppliers#search"


  		

end
