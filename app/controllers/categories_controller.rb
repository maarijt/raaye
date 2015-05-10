class CategoriesController < ApplicationController

	def index
		# if !session[:user_id] then redirect_to welcome_path end
		@categories = Category.all
		@current_user = User.find_by_id(session[:user_id])
	end

	def new
	end

	def edit
		@category = Category.find params[:id]
	end

	def update
		@category = Category.find params[:id]
    	@category.businesses.create(business_params)
    	flash[:notice] = "#{@category.title} was successfully updated."	
    	redirect_to category_path(@category)	
	end

	def show
		id = params[:id] 
    	@category = Category.find(id)	
	end

	def create
		@category = Category.new category_params
  		@category.save
  		redirect_to categories_path
  	end
  	
	def destroy
		@category = Category.find(params[:id])
    	@category.destroy
    	redirect_to categories_path
	end

	private

  	def category_params
    	params.require(:category).permit(:title)
  	end

  	def business_params
    	params.require(:business).permit(:title, :rating, :category_id, :description)
  	end

end
