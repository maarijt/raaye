class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :title
      t.integer :rating
      t.references :category, index: true

      t.timestamps
    end
  end
end
