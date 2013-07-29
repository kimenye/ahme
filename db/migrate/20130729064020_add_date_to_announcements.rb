class AddDateToAnnouncements < ActiveRecord::Migration
  def change
    add_column :announcements, :announcement_date, :timestamp
  end
end
