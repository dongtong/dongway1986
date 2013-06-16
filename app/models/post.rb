class Post < ActiveRecord::Base
  attr_accessible :description, :content, :published, :published_at, :title, :tag_list
  has_many :comments, :dependent => :destroy
  acts_as_taggable
end


