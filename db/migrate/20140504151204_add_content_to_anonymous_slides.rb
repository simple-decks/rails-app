class AddContentToAnonymousSlides < ActiveRecord::Migration
  def change
    add_column :anonymous_slides, :content, :text
  end
end
