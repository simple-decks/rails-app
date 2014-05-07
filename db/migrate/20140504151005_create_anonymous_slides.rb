class CreateAnonymousSlides < ActiveRecord::Migration
  def change
    create_table :anonymous_slides do |t|

      t.timestamps
    end
  end
end
