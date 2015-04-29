Given /the following Categories exist/ do |categories_table|
  categories_table.hashes.each do |category|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Category.create!(category)
  end
end