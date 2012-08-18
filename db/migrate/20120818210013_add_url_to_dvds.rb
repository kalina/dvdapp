class AddUrlToDvds < ActiveRecord::Migration
  def change
    add_column :dvds, :url, :string
  end
end
