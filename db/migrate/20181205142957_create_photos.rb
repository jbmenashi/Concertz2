class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.integer :squad_id
      t.string :url
      t.string :caption

      t.timestamps
    end
  end
end
