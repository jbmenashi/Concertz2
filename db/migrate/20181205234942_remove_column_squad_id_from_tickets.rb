class RemoveColumnSquadIdFromTickets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :squad_id, :integer
  end
end
