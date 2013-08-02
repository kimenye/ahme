class Post < ActiveRecord::Base
  attr_accessible :body, :title, :user_id, :category_ids
  belongs_to :user
  has_and_belongs_to_many :categories
end
