class CreatePostComments < ActiveRecord::Migration
  def change
    create_table :post_comments do |t|
      t.references :post
      t.references :user
      t.string :text

      t.timestamps
    end
    add_index :post_comments, :post_id
    add_index :post_comments, :user_id
  end
end
