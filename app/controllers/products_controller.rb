class ProductsController < ApplicationController

	def index
		sort = params[:sort]
		sort_order = params[:sort_order]
		discount = params[:discount]

		if discount
			@products = Product.where(" price < ?", 40)
		else
      		@products = Product.all
    	end

		if sort && sort_order
   			@products = Product.order(sort => sort_order)
		end
		
	end

	def show
			# product_id = params[:id]
			# @product = Product.find_by(id: product_id)
			if params[:id] == "random"
       # Select random recipe from the database
       products = Product.all
       @product = products.sample
     else
       product_id = params[:id]
       @product = Product.find_by(id: product_id)
     end
	end

	def search
	     search_term = params[:search_term]
	     @products = Product.where("name ILIKE ?", "%#{search_term}%")
	     render :index
    end

	def shirt
	end
	

	def new

	end

	def create
		input_name = params[:product_name]
		input_price = params[:price ]
		input_description = params[:description]
		input_image = params[:image]
		@product = Product.create( name: input_name, price: input_price, description: input_description, image: input_image )
		flash[:success] = "product was created successfully!"
		redirect_to "/products"	
	end
		
	def edit
		product_id = params[:id]
		@product = Product.find_by(id: product_id)

		
	end

	def update

		@product = Product.find_by(id: params[:id])
		@product.name = params[:product_name]
		@product.price = params[:price]
		@product.description = params[:product_description]
		@product.image = params[:image]
		@product.save
		
		flash[:info] = "product updated successfully!"
      	redirect_to "/products"
	end
	def destroy
		@product = Product.find_by(id: params[:id])
		@product.destroy		
		flash[:danger] = "product deleted successfully!"
		redirect_to "/products"
		
	end


	def newshirt

		input_name = params[:product_name]
		input_price = params[:price ]
		input_description = params[:description]
		input_image = params[:image]
		@product = Product.create( name: input_name, price: input_price, description: input_description, image: input_image )
	end
	


end
