class AddContentToPresentations < ActiveRecord::Migration
  def change
    add_column :presentations, :content, :string
  end
end
