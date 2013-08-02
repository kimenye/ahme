class CreatePostsCategoriesJoin < ActiveRecord::Migration
  def self.up
    create_table 'posts_categories', :id => false do |t|
      t.column 'post_id', :integer
      t.column 'category_id', :integer
    end
  end

  def self.down
    drop_table 'posts_categories'
  end
end
