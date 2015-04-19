class Category < ActiveRecord::Base
	has_many :businesses, dependent: :destroy
	validates :title, presence: true
end
