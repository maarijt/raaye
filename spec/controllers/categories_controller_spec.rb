require 'spec_helper'


describe CategoriesController do 

	describe 'adding categories' do

		before :each do
			@category = Category.new(:title => 'Zakir')
			@category.save
		end

		it 'should add my new category' do
			Category.last.should == @category
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

		it 'should update my category' do
			@category.businesses.create(:title => 'wow', :rating => 1, :category_id => 1, :description => 'wow')

			Category.last.should_not == nil
		end

		it 'should destroy my category' do
			@category.destroy
			Category.last.should_not == @category
		end




	end
end