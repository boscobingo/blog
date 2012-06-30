class Comment < ActiveRecord::Base
  attr_accessible :body, :commenter, :post

  validates :body, :presence => true
  validates :commenter, :presence => true
end
