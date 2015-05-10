require 'spec_helper'

RSpec.describe UsersController, type: :controller do

	describe 'add_new_user' do

		it 'should add my new user' do
			@user = User.new(:name => 'Maarij')
			@user.save
			User.last.should == @user
		end

		it 'should delete a user' do
			@user = User.new(:name => 'Maarij')
			@user.destroy
			User.last.should_not == @user
		end
	end
end