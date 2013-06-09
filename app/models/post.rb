class Post < ActiveRecord::Base
  attr_accessible :description, :content, :published, :published_at, :title
  has_many :comments, :dependent => :destroy
end
