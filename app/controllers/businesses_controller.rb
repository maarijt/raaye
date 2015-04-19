class BusinessesController < ApplicationController
	def show
		@category = Category.find(params[:category_id])
		@business = @category.businesses.find(params[:id])
	end

	def create
		@category = Category.find(params[:category_id])
		@business = @category.businesses.create(business_params)
	end

	private

	def business_params
	params.require(:business).permit(:title, :rating)
	end
end
