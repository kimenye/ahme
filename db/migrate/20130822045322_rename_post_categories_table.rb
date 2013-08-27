class RenamePostCategoriesTable < ActiveRecord::Migration
  def up
    # rename_table :posts_categories, :categories_posts
  end

  def down
    # rename_table :categories_posts, :posts_categories
  end
end
