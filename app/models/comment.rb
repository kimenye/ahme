class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  attr_accessible :text, :user_id, :post_id
end
