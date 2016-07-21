class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def new

		
	end

	def create
		product = Product.create(products_params)
		if product.save
			redirect_to "/products"
		
		else
			flash[:errors]= product.errors.full_messages
			redirect_to "/products/new"
		end
	end

	def show
		@product = Product.find(params[:id])
		
	end

	def edit
		@product = Product.find(params[:id])

	end

	def update
		product = Product.find(params[:id])
		product.update(products_params)
			redirect_to "/products"
		
		end

	def destroy
		product = Product.find(params[:id])
		product.destroy
		redirect_to "/products"
		
	end

	private
		def products_params
			params.require(:product).permit(:name, :description, :pricing)
		end


end