require 'spec_helper'

module PostSpecHelper
  def valid_post_attributes
    { :content => 'somecontent',
      :name => 'someusername',
      :title => 'sometitle' }
  end
end

describe Post do
  include PostSpecHelper

  before { @post = Post.new }

  specify "should be invalid without a name" do
    @post.attributes = valid_post_attributes.except(:name)
    @post.should_not be_valid
    @post.name = valid_post_attributes[:name]
    @post.should be_valid
  end

  specify "should be invalid without a title" do
    @post.attributes = valid_post_attributes.except(:title)
    @post.should_not be_valid
    @post.title = valid_post_attributes[:title]
    @post.should be_valid
  end

  specify "should be invalid with a title of length less than 5" do
    @post.attributes = valid_post_attributes
    @post.title = "a" * 4
    @post.should_not be_valid
  end

end