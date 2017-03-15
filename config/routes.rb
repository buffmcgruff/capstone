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





  		get"/new_product_line" => "products#shirt"
  		post "/new_product" => "products#newshirt"


  		

end
