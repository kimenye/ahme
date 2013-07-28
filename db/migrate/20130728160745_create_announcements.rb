class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.references :user
      t.string :title
      t.string :body

      t.timestamps
    end
    add_index :announcements, :user_id
  end
end
