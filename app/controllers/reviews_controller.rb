class ReviewsController < ApplicationController
before_filter :has_user_and_business, :only => [:new, :create]

def has_user_and_business
    unless session[:username]
      flash[:warning] = 'You must be logged in to create a review.'
      redirect_to root_url
    end
    unless (@business = Business.find_by_id(params[:business_id]))
      flash[:warning] = 'Review must be for an existing business.'
      redirect_to businesses_path
    end
  end

  def new
    @review = @business.reviews.build
  end
  
  def create
  	@category = Category.find_by_id(session[:category_id])
  	@business = Business.find_by_id(params[:business_id])
  	@current_user = User.find_by_name(session[:username])
    @reviews = @business.reviews.build(review_params)
    @reviews.update_attributes(:username => session[:username], :user_id => session[:user_id])
    redirect_to category_business_path(@category, @business)
  end

  private
  def review_params
  	params.require(:review).permit(:rating, :comments, :username)
  end

end