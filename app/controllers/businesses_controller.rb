class BusinessesController < ApplicationController
	def show
		@category = Category.find_by_id(params[:category_id])
		session[:category_id] = params[:category_id]
		@business = @category.businesses.find_by_id(params[:id])
		@reviews = @business.reviews
	end

	def new 
	end

	def find
		@category = Category.find_by_id(params[:category_id])
		@business = @category.businesses.find_by_title(params[:title])
		@reviews = @business.reviews
	end


	def create
		@category = Category.find(params[:category_id])
		@business = @category.businesses.create(business_params)
	end

	def destroy
		@category = Category.find(params[:category_id])
		@business = @category.businesses.find(params[:id])
		@business.destroy
		redirect_to category_path(@category)
	end

	def edit
		@category = Category.find(params[:category_id])
		@business = @category.businesses.find(params[:id])
	end

	private

	def business_params
	params.require(:business).permit(:title, :rating, :description)
	end

	
end
