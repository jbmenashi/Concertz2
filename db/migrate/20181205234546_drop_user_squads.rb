class DropUserSquads < ActiveRecord::Migration[5.2]
  def change
    drop_table :user_squads
  end
end
