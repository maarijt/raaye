class Business < ActiveRecord::Base
  belongs_to :category
  has_many :users
end
