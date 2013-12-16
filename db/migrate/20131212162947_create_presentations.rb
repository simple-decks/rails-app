class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.string :author
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
