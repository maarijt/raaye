require 'spec_helper'
require 'simplecov'
SimpleCov.start 'rails'


describe BusinessesController do 
	describe 'add_new_business' do
		before :each do
			@business = Business.new(:title => 'good')
			@business.save
		end

		it 'should add my new review' do
			Business.last.should == @business
		end

		it 'should destroy my business' do
			@business.destroy
			Business.last.should_not == @business
		end


	end
	
end