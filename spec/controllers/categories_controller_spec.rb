require 'spec_helper'


describe CategoriesController do 

	describe 'adding categories' do

		before :each do
			@category_nil = double('double').as_null_object
			@category = [double('category')]
		end

		# it 'should save the category and show home page' do
		# 	@category = double('ncategory').as_null_object
		# 	Category.should_receive(:create!).and_return(@category)
		# 	post :create, {:category => @category}
		# end

		it 'should show the new category page' do
			get :new
			response.should render_template 'new'
		end


	end
end