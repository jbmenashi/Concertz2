class DropSquads < ActiveRecord::Migration[5.2]
  def change
    drop_table :squads
  end
end
