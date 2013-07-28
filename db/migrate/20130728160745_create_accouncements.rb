class CreateAccouncements < ActiveRecord::Migration
  def change
    create_table :accouncements do |t|
      t.references :user
      t.string :title
      t.string :body

      t.timestamps
    end
    add_index :accouncements, :user_id
  end
end
