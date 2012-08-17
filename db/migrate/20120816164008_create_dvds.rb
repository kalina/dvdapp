class CreateDvds < ActiveRecord::Migration
  def change
    create_table :dvds do |t|
      t.string :title
      t.integer :release
      t.integer :genre
      t.integer :director
      t.string :notes

      t.timestamps
    end
  end
end
