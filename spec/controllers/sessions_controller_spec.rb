require 'spec_helper'

RSpec.describe SessionsController, type: :controller do

	describe 'add_new_session' do
		before :each do
			@user = User.new(:name => 'Maarij', :uid => '1')
			@user.save
		end

		# it 'should set current_user to user' do
		# 	get :create
		# 	response.should redirect_to(root_url)
		# end

	end

	describe 'destroy_session' do
		it 'should set current_user to null' do
			get :destroy
			session[:session_destroyed].should == true
		end
	end

end