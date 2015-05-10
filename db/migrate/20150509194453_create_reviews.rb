class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.integer     'rating'
    	t.text        'comments'
      t.string      'username'
    	t.references  'user'
    	t.references  'business'
    end
  end

  def down 
  	drop_table 'reviews'
  end
end
