class Business < ActiveRecord::Base
  belongs_to :category
  has_many :users, :through => :reviews
  has_many :reviews
  validates :title, :presence => true
  # validates :description, :presence => true

end
	