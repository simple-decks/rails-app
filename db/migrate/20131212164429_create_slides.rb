class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.belongs_to :presentation, index: true
      t.string :content
      t.string :slide_type

      t.timestamps
    end
  end
end
