class AddColumnsToUserSquads < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_squads, :user, foreign_key: true
    add_reference :user_squads, :squad, foreign_key: true
  end
end
