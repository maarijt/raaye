require 'spec_helper'

describe ReviewsController do

	describe 'add_new_review' do
		before :each do
			@review = Review.new(:comments => 'good', :rating => 5)
			@review.save
		end

		it 'should add my new review' do
			Review.last.should == @review
		end


	end

	# describe 'furthermore' do
	# 	it 'should render new template' do
	# 		get :new
	# 		response.should render_template 'new'
	# 	end
	# end
end