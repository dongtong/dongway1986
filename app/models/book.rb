class Book < ActiveRecord::Base
  attr_accessible :author, :description, :download_url, :name, :published_at, :publisher
end
