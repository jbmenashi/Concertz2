class CreateUserSquads < ActiveRecord::Migration[5.2]
  def change
    create_table :user_squads do |t|

      t.timestamps
    end
  end
end
