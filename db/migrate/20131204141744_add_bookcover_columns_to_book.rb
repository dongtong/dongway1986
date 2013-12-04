class AddBookcoverColumnsToBook < ActiveRecord::Migration
  def self.up
    add_attachment :books, :bookcover
  end

  def self.down
    remove_attachment :books, :bookcover
  end
end
