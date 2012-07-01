require 'spec_helper'

module CommentSpecHelper
  def valid_comment_attributes
    { :commenter => 'name of commenter',
      :body => 'sample body text' }
  end
end

describe Comment do
  include CommentSpecHelper

  before { @comment = Comment.new }

  specify "should be invalid without a commenter" do
    @comment.attributes = valid_comment_attributes.except(:commenter)
    @comment.should_not be_valid
    @comment.commenter = valid_comment_attributes[:commenter]
    @comment.should be_valid
  end

  specify "should be invalid without a body" do
    @comment.attributes = valid_comment_attributes.except(:body)
    @comment.should_not be_valid
    @comment.body = valid_comment_attributes[:body]
    @comment.should be_valid
  end

end