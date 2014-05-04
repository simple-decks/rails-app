class AddTokenUrlToPresentations < ActiveRecord::Migration
  def change
    add_column :presentations, :token_url, :string
  end
end
