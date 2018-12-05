class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :location
      t.string :artist
      t.string :genre
      t.string :venue

      t.timestamps
    end
  end
end
