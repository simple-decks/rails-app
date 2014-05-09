class RemoveTokenUrlFromPresentations < ActiveRecord::Migration
  def change
    remove_column :presentations, :token_url, :string
  end
end
