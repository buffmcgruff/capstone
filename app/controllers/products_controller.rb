class ProductsController < ApplicationController


	def index
		
		@products = Product.all	
		render 'index.html.erb'

	end

	def show
		product_id = params[:id]
		@product = Product.find_by(id: product_id )
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
