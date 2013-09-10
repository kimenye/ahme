class Announcement < ActiveRecord::Base
  belongs_to :user

  validates :announcement_date, presence: true
  attr_accessible :body, :title, :user_id, :announcement_date
end
