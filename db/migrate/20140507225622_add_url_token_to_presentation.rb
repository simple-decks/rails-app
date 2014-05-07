class AddUrlTokenToPresentation < ActiveRecord::Migration
  def change
    add_column :presentations, :url_token, :string
  end
end
