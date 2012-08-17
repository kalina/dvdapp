class CreateDvds < ActiveRecord::Migration
  def change
    create_table :dvds do |t|
      t.string :title
      t.integer :release
      t.integer :genre_id
      t.integer :director_id
      t.string :notes

      t.timestamps
    end
  end
end
