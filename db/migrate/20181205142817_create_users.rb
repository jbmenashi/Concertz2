class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.text :bio
      t.integer :age
      t.string :image

      t.timestamps
    end
  end
end
