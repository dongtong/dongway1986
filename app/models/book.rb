class Book < ActiveRecord::Base
  attr_accessible :author, :description, :download_url, :name, :published_at, :publisher, :bookcover
  has_attached_file :bookcover, :styles => {:thumb => "160x200>" }, :default_url => "/images/:style/missing.png"
end
