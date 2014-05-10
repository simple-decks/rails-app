class AddIndexToPresentations < ActiveRecord::Migration
  def change
    add_index :presentations, :url_token
    add_index :presentations, :url_title
  end
end
