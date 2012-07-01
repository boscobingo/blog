class Comment < ActiveRecord::Base
  attr_accessible :body, :commenter, :post

  validates_presence_of :body, :message => 'is required'
  validates_presence_of :commenter, :message => 'is required'
end
