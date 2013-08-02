class PostComment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  attr_accessible :text, :post_id, :user_id
end
