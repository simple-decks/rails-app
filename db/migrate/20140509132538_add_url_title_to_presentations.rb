class AddUrlTitleToPresentations < ActiveRecord::Migration
  def change
    add_column :presentations, :url_title, :string
  end
end
