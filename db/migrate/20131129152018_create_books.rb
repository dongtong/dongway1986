class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.string :author
      t.string :publisher
      t.datetime :published_at
      t.string :download_url

      t.timestamps
    end
  end
end
