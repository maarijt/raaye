class AddCategoryIdToBusinesses < ActiveRecord::Migration
  def change
  	add_column :category_id, :integer
  end
end
